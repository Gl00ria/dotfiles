#!/usr/bin/env sh

# Terminate already running bar instances
killall -q waybar

# Wait until the processes have been shut down
while pgrep -x waybar >/dev/null; do sleep 1; done

# Launch main
waybar

# #!/usr/bin/bash

# killall -q waybar

# # env GTK_DEBUG=interactive
# waybar -l info -c ~/.config/waybar/config.jsonc -s ~/.config/waybar/style.css >/tmp/waybar.log 2>&1 &
# disown
