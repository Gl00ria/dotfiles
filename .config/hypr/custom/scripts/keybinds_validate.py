#!/usr/bin/env python3
"""Validate the Keybind Data File (keybinds.json) for the Cheatsheet module.

Checks:
- file parses as JSON
- top level has a "sections" list
- section names are unique and non-empty
- every bind has non-empty "keys" and "description" strings
- "action", when present, is a non-empty string
"""

import json
import os
import sys

DEFAULT_PATH = os.path.join(os.path.dirname(__file__), "..", "keybinds.json")


def main() -> int:
    path = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_PATH
    path = os.path.abspath(os.path.expanduser(path))
    try:
        with open(path, "r", encoding="utf-8") as f:
            data = json.load(f)
    except (OSError, json.JSONDecodeError) as e:
        print(f"FAIL: cannot read/parse {path}: {e}")
        return 1

    sections = data.get("sections")
    if not isinstance(sections, list) or not sections:
        print("FAIL: 'sections' must be a non-empty list")
        return 1

    errors = []
    seen_names = set()
    total_binds = 0
    for si, section in enumerate(sections):
        name = section.get("name", "")
        if not isinstance(name, str) or not name.strip():
            errors.append(f"sections[{si}]: empty or missing 'name'")
        elif name in seen_names:
            errors.append(f"sections[{si}]: duplicate section name '{name}'")
        else:
            seen_names.add(name)

        binds = section.get("binds")
        if not isinstance(binds, list) or not binds:
            errors.append(f"section '{name}': 'binds' must be a non-empty list")
            continue
        for bi, bind in enumerate(binds):
            label = f"section '{name}' binds[{bi}]"
            keys = bind.get("keys")
            desc = bind.get("description")
            action = bind.get("action")
            if not isinstance(keys, str) or not keys.strip():
                errors.append(f"{label}: 'keys' must be a non-empty string")
            if not isinstance(desc, str) or not desc.strip():
                errors.append(f"{label}: 'description' must be a non-empty string")
            if "action" in bind and (not isinstance(action, str) or not action.strip()):
                errors.append(
                    f"{label}: 'action' must be a non-empty string when present"
                )
            total_binds += 1

    if errors:
        print("FAIL:")
        for e in errors:
            print(f"  - {e}")
        return 1

    print(f"OK: {len(sections)} sections, {total_binds} keybind entries")
    return 0


if __name__ == "__main__":
    sys.exit(main())
