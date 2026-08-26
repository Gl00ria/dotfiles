#!/usr/bin/env bash
# ==================================================
#  KoolDots (2026)
#  Project URL: https://github.com/LinuxBeginnings
#  License: GNU GPLv3
#  SPDX-License-Identifier: GPL-3.0-or-later
#  Edited by: @Gl00ria
# ==================================================
# Script for changing blurs on the fly

STATE=$(hyprctl -j getoption decoration:blur:passes | jq ".int")

if [ "${STATE}" == "10" ]; then
  hyprctl eval 'hl.config({ decoration = { blur = { size = 2, passes = 2 } } })'
  notify-send 'Transparent Background'
elif [ "${STATE}" == "2" ]; then
  hyprctl eval 'hl.config({ decoration = { blur = { size = 5, passes = 5 } } })'
  notify-send 'Normal Blur'
else
  hyprctl eval 'hl.config({ decoration = { blur = { passes = 10 } } })'
  notify-send 'Blur Disabled'
fi
