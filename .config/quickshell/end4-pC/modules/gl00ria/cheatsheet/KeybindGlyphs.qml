pragma ComponentBehavior: Bound

import QtQuick

QtObject {
    readonly property var keyGlyphMap: ({
        "SUPER": "󰖳",
        "CTRL": "󰘴",
        "SHIFT": "󰘶",
        "ALT": "󰘵",
        "ENTER": "󰌑",
        "SPACE": "󱁐",
        "TAB": "⇥",
        "BACKSPACE": "󰭜",
        "MINUS": "󰍵",
        "EQUAL": "󰇼",
        "A": "󰬈", "B": "󰬉", "C": "󰬊", "D": "󰬋", "E": "󰬌", "F": "󰬍",
        "G": "󰬎", "H": "󰬏", "I": "󰬐", "J": "󰬑", "K": "󰬒", "L": "󰬓",
        "M": "󰬔", "N": "󰬕", "O": "󰬖", "P": "󰬗", "Q": "󰬘", "R": "󰬙",
        "S": "󰬚", "T": "󰬛", "U": "󰬜", "V": "󰬝", "W": "󰬞", "X": "󰬟",
        "Y": "󰬠", "Z": "󰬡",
    })

    function prettyKeys(keys) {
        if (!keys || keys === "N/A") return keys ?? "";
        return keys.replace(/\b(SUPER|CTRL|SHIFT|ALT|ENTER|SPACE|TAB|BACKSPACE|MINUS|EQUAL|[A-Z])\b/g, token => this.keyGlyphMap[token] ?? token);
    }

    function keyTokens(keys) {
        return (keys ?? "").split(/\s+\+\s+/).map(token => token.trim()).filter(token => token.length > 0);
    }
}
