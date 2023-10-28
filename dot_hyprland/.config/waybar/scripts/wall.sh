#!/usr/bin/env bash

swww_fork=~/.config/waybar/scripts/swww

"$swww_fork" query || "$swww_fork" init
"$swww_fork" img "$1" --transition-fps 60 --transition-type grow --transition-pos 0.925,0.977 --transition-duration 2
