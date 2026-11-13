pragma ComponentBehavior: Bound

import qs.services
import qs.modules.common
import qs.modules.common.functions
import qs.modules.common.widgets
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell
import Quickshell.Io

Item {
    id: root

    property real padding: 4
    implicitWidth: QsWindow?.window?.screen.width * 0.7 ?? 0
    implicitHeight: QsWindow?.window?.screen.height * 0.7 ?? 0

    // Emitted when an entry is activated; the panel closes itself.
    signal activated()

    property var sections: []

    // Flattened Keybind Entries: {section, keys, description, action, name}
    readonly property var entries: {
        const out = [];
        for (const section of root.sections) {
            for (const bind of (section?.binds ?? [])) {
                out.push({
                    section: section?.name ?? "",
                    keys: bind?.keys ?? "",
                    description: bind?.description ?? "",
                    action: bind?.action ?? "",
                    name: `${section?.name ?? ""} ${bind?.keys ?? ""} ${bind?.description ?? ""}`,
                });
            }
        }
        return out;
    }

    property string query: ""
    readonly property bool filtering: query.length > 0
    readonly property var results: root.filtering
        ? Fuzzy.go(root.query, root.entries, { all: true, key: "name" }).map(r => r.obj)
        : root.entries
    // First entry is highlighted by default, so arrows work immediately on open.
    property int selectedResultIndex: 0
    onResultsChanged: root.selectedResultIndex = 0
    onSelectedResultIndexChanged: listView.positionViewAtIndex(root.selectedResultIndex, ListView.Contain)

    function loadData() {
        try {
            const parsed = JSON.parse(keybindsFileView.text());
            root.sections = parsed?.sections ?? [];
        } catch (e) {
            console.error("[Cheatsheet] Failed to parse keybind data:", e);
            root.sections = [];
        }
    }

    KeybindGlyphs { id: glyphs }

    function activate(entry) {
        if (!entry) return;
        if (entry.action?.length > 0) {
            Quickshell.execDetached(["bash", "-c", entry.action]);
        } else { // Display-only entry: copy the key hint to the clipboard
            const keys = entry.keys === "N/A" ? entry.description : entry.keys;
            Quickshell.execDetached(["bash", "-c", `printf '%s' '${StringUtils.shellSingleQuoteEscape(keys)}' | wl-copy`]);
            Quickshell.execDetached(["notify-send", "-a", "Cheatsheet", Translation.tr("Copied keybind"), `${keys} — ${entry.description}`]);
        }
        root.activated();
    }

    FileView {
        id: keybindsFileView
        path: Qt.resolvedUrl(`${Directories.config}/hypr/custom/keybinds.json`)
        watchChanges: true
        onLoadedChanged: root.loadData()
        onLoadFailed: error => console.error("[Cheatsheet] Failed to load keybind data:", error)
        onFileChanged: this.reload()
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        MaterialTextField {
            id: searchField
            Layout.fillWidth: true
            placeholderText: Translation.tr("Search keybinds…")
            font.pixelSize: Appearance.font.pixelSize.normal
            wrapMode: TextEdit.NoWrap
            focus: true

            Component.onCompleted: forceActiveFocus()

            onTextChanged: root.query = text

            Keys.onPressed: event => {
                if (event.key === Qt.Key_Escape) {
                    if (root.filtering) {
                        root.query = "";
                        text = "";
                    } else {
                        root.activated();
                    }
                    event.accepted = true;
                } else if (event.key === Qt.Key_Down) {
                    root.selectedResultIndex = Math.min(root.selectedResultIndex + 1, root.results.length - 1);
                    event.accepted = true;
                } else if (event.key === Qt.Key_Up) {
                    root.selectedResultIndex = Math.max(root.selectedResultIndex - 1, 0);
                    event.accepted = true;
                } else if (event.key === Qt.Key_Return || event.key === Qt.Key_Enter) {
                    root.activate(root.results[root.selectedResultIndex]);
                    event.accepted = true;
                }
            }
        }

        // Single flat list of Keybind Entries, visually grouped by section
        // headers. Works for both browsing (empty query) and search results.
        ListView {
            id: listView
            Layout.fillWidth: true
            Layout.fillHeight: true
            clip: true
            model: root.results
            spacing: 4

            section.property: "section"
            section.criteria: ViewSection.FullString
            section.delegate: StyledText {
                required property string section
                width: listView.width
                topPadding: 12
                text: section
                font.pixelSize: Appearance.font.pixelSize.title
                color: Appearance.colors.colPrimary
            }

            delegate: RippleButton {
                id: resultButton

                required property var modelData
                required property int index
                readonly property var tokens: glyphs.keyTokens(modelData?.keys)
                readonly property bool selected: resultButton.index === root.selectedResultIndex

                implicitWidth: listView.width
                implicitHeight: rowLayout.implicitHeight + 12
                buttonRadius: Appearance.rounding.small

                onClicked: root.activate(resultButton.modelData)

                Rectangle {
                    anchors.fill: parent
                    radius: resultButton.buttonRadius
                    color: resultButton.selected ? Appearance.colors.colSecondaryContainer : "transparent"
                }

                contentItem: Item {
                    RowLayout {
                        id: rowLayout
                        anchors.fill: parent
                        anchors.margins: 6
                        spacing: root.padding + 8

                        Row { // Key hint
                            spacing: 3
                            Layout.alignment: Qt.AlignVCenter

                            Repeater {
                                model: resultButton.tokens

                                delegate: Row {
                                    id: tokenRow

                                    required property int index
                                    required property var modelData

                                    spacing: 3

                                    KeyboardKey {
                                        key: glyphs.prettyKeys(tokenRow.modelData)
                                    }
                                    StyledText {
                                        visible: tokenRow.index < resultButton.tokens.length - 1
                                        anchors.verticalCenter: parent.verticalCenter
                                        text: "+"
                                    }
                                }
                            }
                        }

                        StyledText {
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignVCenter
                            elide: Text.ElideRight
                            text: resultButton.modelData?.description ?? ""
                            color: Appearance.colors.colOnLayer0
                        }

                        StyledText { // Section tag (only useful while filtering)
                            Layout.alignment: Qt.AlignVCenter
                            visible: root.filtering && resultButton.modelData?.section?.length > 0
                            text: resultButton.modelData?.section ?? ""
                            font.pixelSize: Appearance.font.pixelSize.smaller
                            color: Appearance.colors.colSubtext
                        }
                    }
                }
            }

            onCountChanged: positionViewAtIndex(root.selectedResultIndex, ListView.Contain)

            ScrollEdgeFade {
                target: listView
                color: Appearance.colors.colLayer0Base
            }
        }

        StyledText { // Empty results
            Layout.alignment: Qt.AlignHCenter
            visible: root.filtering && root.results.length === 0
            color: Appearance.colors.colSubtext
            text: Translation.tr("No matching keybinds")
        }
    }
}
