pragma ComponentBehavior: Bound

import qs.modules.common
import qs.modules.common.widgets
import QtQuick
import QtQuick.Layouts

// Renders one section of the Keybind Data File: a title and its entries.
Column {
    id: root

    property var sectionData
    property string categoryName: sectionData?.name ?? ""
    property var binds: sectionData?.binds ?? []
    property real entrySpacing: 14

    KeybindGlyphs { id: glyphs }

    spacing: 8

    StyledText {
        text: root.categoryName
        font.pixelSize: Appearance.font.pixelSize.title
        color: Appearance.colors.colPrimary
    }

    Repeater {
        model: root.binds

        delegate: Row {
            id: bindRow

            required property var modelData
            readonly property var tokens: glyphs.keyTokens(modelData?.keys)

            spacing: root.entrySpacing

            Row { // Key hint
                spacing: 3

                Repeater {
                    model: bindRow.tokens

                    delegate: Row {
                        id: tokenRow

                        required property int index
                        required property var modelData

                        spacing: 3

                        KeyboardKey {
                            key: glyphs.prettyKeys(tokenRow.modelData)
                        }
                        StyledText {
                            visible: tokenRow.index < bindRow.tokens.length - 1
                            anchors.verticalCenter: parent.verticalCenter
                            text: "+"
                        }
                    }
                }
            }

            StyledText {
                anchors.verticalCenter: parent.verticalCenter
                text: bindRow.modelData?.description ?? ""
                color: Appearance.colors.colOnLayer0
            }
        }
    }
}
