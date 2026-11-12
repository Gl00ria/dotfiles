#!/usr/bin/env sh
# fork from https://github.com/JaKooLit   #
# By Gl00ria (https://github.com/Gl00ria) #
#

# kill yad to not interfere with this binds
pkill yad || true

# check if rofi is already running
if pidof rofi >/dev/null; then
  pkill rofi
fi
roconf="~/.config/rofi/config-keybinds.rasi"
scriptsDir="$HOME/.config/hypr/custom/scripts"
customScripts="$HOME/.config/hypr/custom/scripts"

keybinds_hint="━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Main ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏SUPER + H                         This Menu
󰌓 ▏SUPER                             App Lanucher
󰌓 ▏SUPER + 󱊷                         Close Active Window
━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Utils ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏SUPER + I                         Settings
󰌓 ▏N/A                               Session Menu
󰌓 ▏CTRL + ALT + Semicolon            On Screen Keyboard
󰌓 ▏SUPER + W                         Toggle Bar
󰌓 ▏SUPER + L                         Lockscreen
󰌓 ▏SUPER + SHIFT + G                 Toggle Overlay
󰌓 ▏CTRL + ALT + BACKSPACE            Task Manager
󰌓 ▏SUPER + SHIFT + O                 OCR
󰌓 ▏CTRL + ALT + S                    Google Image Search
󰌓 ▏CTRL + ALT + T                    Translate Screen Content
━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Recording ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏N/A                               Record Fullscreen (Without Sound)
󰌓 ▏SHIFT + SUPER + R                 Record Fullscreen (With Sound)
󰌓 ▏N/A                               Record Region
━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Screenshot ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏Print                             Screenshot (Active Monitor)
󰌓 ▏CTRL + Print                      Screenshot (Select Region)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Apps ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏SUPER + K                         Terminal
󰌓 ▏SUPER + B                         Browser
󰌓 ▏SUPER + E                         File Manager
󰌓 ▏SUPER + O                         Notes App
󰌓 ▏SUPER + G                         Gparted
󰌓 ▏SUPER + N                         Notification Center
󰌓 ▏SUPER + A                         Toggle Left Sidebar
󰌓 ▏SUPER + V                         Clipboard Manager
󰌓 ▏SUPER + T                         Text Editor
󰌓 ▏SUPER + C                         VS Code
󰌓 ▏N/A                               Music Player
━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Eye-Candy ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏N/A                               Select Wallpaper
󰌓 ▏N/A                               Toggle Blur
󰌓 ▏SHIFT + SUPER + W                 Random Wallpaper
󰌓 ▏SHIFT + SUPER + T                 Toggle Theme Mode
󰌓 ▏N/A                               Restart Widgets
󰌓 ▏SHIFT + SUPER + P                 Change Bar Style
󰌓 ▏SHIFT + SUPER + C                 Color Picker
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Window ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏ALT + TAB                         Cycle Window Focus
󰌓 ▏CTRL + ALT + H                    Focus to Window 
󰌓 ▏CTRL + ALT + L                    Focus to Window 
󰌓 ▏CTRL + ALT + K                    Focus to Window 
󰌓 ▏CTRL + ALT + J                    Focus to Window 
󰌓 ▏SUPER + CTRL + ALT + Y            Move Window to 
󰌓 ▏SUPER + CTRL + ALT + O            Move Window to 
󰌓 ▏SUPER + CTRL + ALT + I            Move Window to 
󰌓 ▏SUPER + CTRL + ALT + U            Move Window to 
󰌓 ▏󰍽                                 Move Window with Mouse
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Workspace ━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏SUPER + SHIFT + 󰍽 Scroll          Move Window To workspace
━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Media ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏N/A                               Sound App
󰌓 ▏XF86AudioLowerVolume              Decrease Volume
󰌓 ▏XF86AudioRaiseVolume              Increase Volume
󰌓 ▏XF86MonBrightnessDown             Decrease Brightness
󰌓 ▏XF86MonBrightnessUp               Increase Brightness
󰌓 ▏XF86AudioMute                     Toggle Mute (Speaker)
󰌓 ▏XF86AudioMicMute                  Toggle Mute (Mic)
󰌓 ▏XF86AudioPause                    Media Pause/Play
󰌓 ▏XF86AudioNext                     Media Play-Next
󰌓 ▏XF86AudioPrev                     Media Play-Prev
━━━━━━━━━━━━━━━━━━━━━━━━━━ Tmux ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏CTRL + Space                      Tmux: Main Prefix
󰌓 ▏Prefix + ALT + U                  Tmux: List Keymaps
󰌓 ▏Prefix + ?                        Tmux: List Keymaps
󰌓 ▏Prefix + SHIFT + R                Tmux: Reload
󰌓 ▏Prefix + [ OR 󰌑                   Tmux: Enter Vim-Mode
󰌓 ▏Prefix + ]                        Tmux: Paste Last Yanked
󰌓 ▏Prefix + =                        Tmux: Show older yanked text
󰌓 ▏Prefix + 󱁐                        Tmux: Change Layout
󰌓 ▏Prefix + 󰘶 + C                    Tmux: Customize options
󰌓 ▏Prefix + 󰘶 + I                    Tmux: Install plugin
󰌓 ▏Prefix + G                        Tmux: Open LazyGit
󰌓 ▏Prefix + S                        Tmux: Choose session
󰌓 ▏Prefix + Hold S                   Tmux: Save session
󰌓 ▏Prefix + N                        Tmux: New Session
󰌓 ▏Prefix + D                        Tmux: Detach session
󰌓 ▏Prefix + SHIFT + 󰯵                Tmux: Choose session
󰌓 ▏Prefix + $                        Tmux: Rename Session
󰌓 ▏Prefix + R                        Tmux: Restore session
󰌓 ▏Prefix + L                        Tmux: GoTo Last session
󰌓 ▏Prefix +                          Tmux: Move to next session
󰌓 ▏Prefix + (                        Tmux: Move to prev session
󰌓 ▏Prefix + T                        Tmux: Show a clock
󰌓 ▏Prefix + ~                        Tmux: Show messages
󰌓 ▏Prefix + I                        Tmux: Window Info
󰌓 ▏Prefix + F                        Tmux: Find window/pane
󰌓 ▏Prefix + &                        Tmux: Kill window
󰌓 ▏Prefix + W                        Tmux: List windows
󰌓 ▏Prefix + C                        Tmux: Create window
󰌓 ▏Prefix + ;                        Tmux: Split Window Vertically
󰌓 ▏Prefix + -                        Tmux: Split Window Horizontally
󰌓 ▏Prefix + !                        Tmux: Create new window of pane
󰌓 ▏Prefix + SHIFT + .                Tmux: Navigate to Next Window
󰌓 ▏Prefix + SHIFT + ,                Tmux: Navigate to Prev Window
󰌓 ▏Prefix + Q                        Tmux: Display pane numbers
󰌓 ▏Prefix + SHIFT + M                Tmux: Clear Marked pane
󰌓 ▏Prefix + X                        Tmux: Kill pane
󰌓 ▏Prefix + SHIFT + J                Tmux: Resize DOWN
󰌓 ▏Prefix + SHIFT + K                Tmux: Resize UP
󰌓 ▏Prefix + SHIFT + L                Tmux: Resize RIGHT
󰌓 ▏Prefix + SHIFT + H                Tmux: Resize LEFT
󰌓 ▏Prefix + M                        Tmux: Maximize/Minimize Pane
󰌓 ▏CTRL + J                          Tmux: Navigate DOWN
󰌓 ▏CTRL + K                          Tmux: Navigate UP
󰌓 ▏CTRL + L                          Tmux: Navigate RIGHT
󰌓 ▏CTRL + H                          Tmux: Navigate LEFT
󰌓 ▏Prefix + >                        Tmux: Swap pane RIGHT
󰌓 ▏Prefix + <                        Tmux: Swap pane LEFT
━━━━━━━━━━━━━━━━━━━━━━━━━━ Herdr ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏CTRL + Space                    Herdr: Main Prefix
󰌓 ▏Prefix + S                      Herdr: Settings
󰌓 ▏Prefix + Q                      Herdr: Detach
󰌓 ▏Prefix + R                      Herdr: Reload Config
󰌓 ▏Prefix + SHIFT + N              Herdr: New Workspace
󰌓 ▏Prefix + SHIFT + W              Herdr: Rename Workspace
󰌓 ▏Prefix + SHIFT + D              Herdr: Close Workspace
󰌓 ▏Prefix + [                      Herdr: Workspace Picker
󰌓 ▏Prefix + c                      Herdr: New Tab
󰌓 ▏Prefix + ,                      Herdr: Rename Pane
󰌓 ▏Prefix + <                      Herdr: Previous Tab
󰌓 ▏Prefix + >                      Herdr: Next Tab
󰌓 ▏Prefix + e                      Herdr: Editor
󰌓 ▏Prefix + H                      Herdr: Focus Pane Left
󰌓 ▏Prefix + J                      Herdr: Focus Pane Down
󰌓 ▏Prefix + K                      Herdr: Focus Pane UP
󰌓 ▏Prefix + L                      Herdr: Focus Pane Right
󰌓 ▏Prefix + ;                      Herdr: Split Vertical
󰌓 ▏Prefix + -                      Herdr: Split Horizontal
󰌓 ▏Prefix + E                      Herdr: Toggle Sidebar
󰌓 ▏Prefix + G                      Herdr: LazyGit
󰌓 ▏Prefix + O                      Herdr: Opencode
󰌓 ▏Prefix + F                      Herdr Plugin: Projects
󰌓 ▏Prefix + Space                  Herdr Plugin: Find Tabs
󰌓 ▏Prefix + C                      Herdr Plugin: Command Palette
━━━━━━━━━━━━━━━━━━━━━━━━━━ TuiOS ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏CTRL + Space                    TuiOS: Main Prefix
󰌓 ▏Prefix + A                      TuiOS: App Launcher
󰌓 ▏Prefix + S                      TuiOS: Settings
󰌓 ▏Prefix + F                      TuiOS: Navigator
󰌓 ▏Prefix + G                      TuiOS: Toggle Scratch
󰌓 ▏Prefix + D                      TuiOS: Debug
󰌓 ▏Prefix + K                      TuiOS: Keybinds
󰌓 ▏Prefix + ENTER                  TuiOS: Copy Mode
󰌓 ▏Prefix + D                      TuiOS: Detach
󰌓 ▏Prefix + E                      TuiOS: Navigate Sidebar
󰌓 ▏Prefix + B                      TuiOS: Toggle Sidebar
󰌓 ▏Prefix + P                      TuiOS: Command Palatte
󰌓 ▏Prefix + W                      TuiOS: Workspace Switcher
󰌓 ▏Prefix + W                      TuiOS: Workspace Switcher
󰌓 ▏Prefix + H                      TuiOS: Focus Pane Left
󰌓 ▏Prefix + J                      TuiOS: Focus Pane Down
󰌓 ▏Prefix + K                      TuiOS: Focus Pane UP
󰌓 ▏Prefix + L                      TuiOS: Focus Pane Right
󰌓 ▏CTRL + H                        TuiOS: Focus Pane Left
󰌓 ▏CTRL + J                        TuiOS: Focus Pane Down
󰌓 ▏CTRL + K                        TuiOS: Focus Pane UP
󰌓 ▏CTRL + L                        TuiOS: Focus Pane Right
󰌓 ▏Prefix + L                      TuiOS: List Sessions
󰌓 ▏Prefix + ;                      TuiOS: Split Vertical
󰌓 ▏Prefix + -                      TuiOS: Split Horizontal
󰌓 ▏Prefix + Z                      TuiOS: Toggle Zoom
󰌓 ▏Prefix + ,                      TuiOS: Rename Pane
󰌓 ▏Prefix + R                      TuiOS: Rotate Splits
󰌓 ▏W or X                          TuiOS 'WM': Close Window
󰌓 ▏S                               TuiOS 'WM': Focus Sidebar
󰌓 ▏;                               TuiOS 'WM': Last Pane
󰌓 ▏M                               TuiOS 'WM': Minimize Window
󰌓 ▏N                               TuiOS 'WM': New Session
󰌓 ▏N                               TuiOS 'WM': New Window
󰌓 ▏ALT + SHIFT + N                 TuiOS 'WM': Next Session
󰌓 ▏ALT + SHIFT + P                 TuiOS 'WM': Next Session
󰌓 ▏TAB                             TuiOS 'WM': Next Window
󰌓 ▏SHIFT + TAB                     TuiOS 'WM': Prev Window
󰌓 ▏R                               TuiOS 'WM': Rename Window
󰌓 ▏M                               TuiOS 'WM': Restore All
󰌓 ▏P                               TuiOS 'WM': Toggle Picture in Picture 'PiP'
󰌓 ▏Z                               TuiOS 'WM': Toggle Zoom
󰌓 ▏S                               TuiOS 'WM': Screensaver
󰌓 ▏=                               TuiOS 'WM': Equalize Splits
󰌓 ▏R                               TuiOS 'WM': Rotate Splits
󰌓 ▏-                               TuiOS 'WM': Split Horizontal
󰌓 ▏;                               TuiOS 'WM': Split Vertical
󰌓 ▏J                               TuiOS 'WM': Swap Down
󰌓 ▏H                               TuiOS 'WM': Swap Left
󰌓 ▏K                               TuiOS 'WM': Swap UP
󰌓 ▏L                               TuiOS 'WM': Swap Right
󰌓 ▏?                               TuiOS 'WM': Toggle Help
󰌓 ▏B                               TuiOS 'WM': Toggle Spotlight
󰌓 ▏Prefix + A                      TuiOS 'Agents': 'Inbox'
󰌓 ▏Prefix + M                      TuiOS 'Agents': 'Mail'
󰌓 ▏ESC OR Q                        TuiOS 'Agents': Inbox Close
󰌓 ▏N                               TuiOS 'Agents': Inbox Deny
󰌓 ▏J OR CTRL + D                   TuiOS 'Agents': Inbox Detail Down
󰌓 ▏K OR CTRL + U                   TuiOS 'Agents': Inbox Detail Up
󰌓 ▏D OR Delete                     TuiOS 'Agents': Inbox dismiss
󰌓 ▏F                               TuiOS 'Agents': Inbox Filter
󰌓 ▏G OR Home                       TuiOS 'Agents': Inbox First
󰌓 ▏G OR End                        TuiOS 'Agents': Inbox Last
󰌓 ▏R                               TuiOS 'Agents': Inbox Reply
󰌓 ▏Y                               TuiOS 'Agents': Inbox Resume
󰌓 ▏V                               TuiOS 'Agents': Inbox Review
󰌓 ▏/                               TuiOS 'Agents': Inbox Select
󰌓 ▏Z                               TuiOS 'Agents': Inbox Snooze
󰌓 ▏S                               TuiOS 'Agents': Inbox Show Snoozed
󰌓 ▏U                               TuiOS 'Agents': Inbox Undow
󰌓 ▏SPACE                           TuiOS 'Agents': Inbox Peak
󰌓 ▏a                               TuiOS 'Agents': Inbox Peak Approve
󰌓 ▏A                               TuiOS 'Agents': Inbox Peak Always Approve
󰌓 ▏d                               TuiOS 'Agents': Inbox Peak Deny
󰌓 ▏ENTER                           TuiOS 'Agents': Inbox Peak Go
󰌓 ▏r                               TuiOS 'Agents': Inbox Peak Read Again
󰌓 ▏TAB                             TuiOS 'Agents': Inbox Peak Type
󰌓 ▏o                               TuiOS 'Agents': Mail Focos Pane
󰌓 ▏n                               TuiOS 'Agents': Mail New
󰌓 ▏r                               TuiOS 'Agents': Mail Reply
󰌓 ▏Prefix + g                      TuiOS: LazyGit
󰌓 ▏Prefix + a                      TuiOS: Opencode
━━━━━━━━━━━━━━━━━━━━━━━━━━ OpenCode ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
󰌓 ▏CTRL + X                        OpenCode: Leader
"

# read hypr font size
fnt_override=$(gsettings get org.gnome.desktop.interface font-name | awk '{gsub(/'\''/,""); print $NF}')
fnt_override="configuration {font: \"JetBrainsMono Nerd Font ${fnt_override}\";}"

# read hypr theme icon
icon_override=$(gsettings get org.gnome.desktop.interface icon-theme | sed "s/'//g")
icon_override="configuration {icon-theme: \"${icon_override}\";}"
# NOTE: this is with a '|' as a separator
# selected=$(echo -e "$keybinds_hint" | rofi -dmenu -p -i -theme-str "${fnt_override}" -theme-str "${r_override}" -theme-str "${icon_override}" -config "${roconf}" | cut -d '|' -f2 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

# This is with an '' as a separator
# selected=$(echo -e "$keybinds_hint" | rofi -dmenu -p -i -theme-str "${fnt_override}" -theme-str "${icon_override}" -config "${roconf}" | sed 's/.*\s*//')
# selected=$(echo -e "$keybinds_hint" | rofi -dmenu -matching fuzzy -p -i -config "${roconf}" | sed 's/.*\s*//')


#
# mappings
#
declare -A KEYMAP=(
    [SUPER]="󰖳"
    [CTRL]="󰘴"
    [SHIFT]="󰘶"
    [ALT]="󰘵"
    [ENTER]="󰌑"
    [SPACE]="󱁐"
    [TAB]="⇥"
    [BACKSPACE]=""
    [A]="󰬈"
    [B]="󰬉"
    [C]="󰬊"
    [D]="󰬋"
    [E]="󰬌"
    [F]="󰬍"
    [G]="󰬎"
    [H]="󰬏"
    [I]="󰬐"
    [J]="󰬑"
    [K]="󰬒"
    [L]="󰬓"
    [M]="󰬔"
    [N]="󰬕"
    [O]="󰬖"
    [P]="󰬗"
    [Q]="󰬘"
    [R]="󰬙"
    [S]="󰬚"
    [T]="󰬛"
    [U]="󰬜"
    [V]="󰬝"
    [W]="󰬞"
    [X]="󰬟"
    [Y]="󰬠"
    [Z]="󰬡"
)
replace_keys() {
    local text
    text=$(cat)

    for key in "${!KEYMAP[@]}"; do
        text=$(sed -E "s/\\<$key\\>/${KEYMAP[$key]}/g" <<<"$text")
    done

    printf '%s\n' "$text"
}
selected=$(
    printf '%s\n' "$keybinds_hint" |
    replace_keys |
    rofi -dmenu -matching fuzzy -p -i -config "$roconf" |
    sed 's/.*\s*//'
)

case "$selected" in
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Main ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"This Menu")
  $scriptsDir/keybind_exec.sh
  ;;
"App Lanucher")
  qs -c end4-pC ipc call search toggle
  ;;
"Close Active Window")
  hyprctl dispatch 'hl.dsp.window.close()'
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Utils ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"Settings")
  XDG_CURRENT_DESKTOP=gnome ~/.config/hypr/hyprland/scripts/launch_first_available.sh \
    "qs -p ~/.config/quickshell/$qsConfig/settings.qml" \
    'systemsettings' \
    'gnome-control-center' \
    'better-control'
  ;;
"Session Menu")
  qs -c end4-pC ipc call session toggle
  ;;
"On Screen Keyboard")
  qs -c end4-pC ipc call osk toggle
  ;;
"Toggle Bar")
  qs -c end4-pC ipc call bar toggle
  ;;
"Lockscreen")
  loginctl lock-session
  ;;
"Toggle Overlay")
  qs -c end4-pC ipc call overlay toggle
  ;;
  "Task Manager")
  ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'command -v btop && kitty -1 fish -c btop' 'gnome-system-monitor' 'plasma-systemmonitor --page-name Processes'
  ;;
"OCR")
  qs -c end4-pC ipc call region ocr
  ;;
  "Google Image Search")
  qs -c end4-pC ipc call region search
  ;;
  "Translate Screen Content")
  qs -c end4-pC ipc call screenTranslator translate
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Recording ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  "Record Fullscreen (With Sound)")
  $HOME/.config/quickshell/$qsConfig/scripts/videos/record.sh --fullscreen --sound
  ;;
  "Record Fullscreen (Without Sound)")
  $HOME/.config/quickshell/$qsConfig/scripts/videos/record.sh --fullscreen
  ;;
"Record Region")
  qs -c end4-pC ipc call region record
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Screenshot ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

"Screenshot (Active Monitor)")
  screenshot() {
    grimhyprctl='grim -o "$(hyprctl activeworkspace -j | jq -r '\''.monitor'\'')"'

    mkdir -p "$(xdg-user-dir PICTURES)/Screenshots" &&
      eval "$grimhyprctl" \
        "$(xdg-user-dir PICTURES)/Screenshots/Screenshot_$(date '+%d-%m-%Y_%H.%M.%S').png"
        $HOME/.config/hypr/custom/scripts/Sounds.sh --screenshot
  }
  ;;
"Screenshot (Select Region)")
  sleep 0.50
  qs -c end4-pC ipc call region screenshot &&
  $HOME/.config/hypr/custom/scripts/Sounds.sh --screenshot
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Apps ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
  "Terminal")
  ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'kitty -1' 'foot' 'alacritty' 'wezterm' 'konsole' 'kgx' 'uxterm' 'xterm'
  ;;
  "Browser")
  ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'firefox' 'brave' 'google-chrome-stable' 'zen-browser' 'chromium' 'microsoft-edge-stable' 'opera' 'librewolf'
  ;;
  "File Manager")
  ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'dolphin' 'nautilus' 'nemo' 'thunar' 'kitty -1 fish -c yazi'
  ;;
  "Notes App")
  ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'obsidian'
  ;;
  "Gparted")
  xhost +SI:localuser:root && gparted
  ;;
  "Notification Center")
  qs -c end4-pC ipc call sidebarRight toggle
  ;;
  "Toggle Left Sidebar")
  qs -c end4-pC ipc call sidebarLeft toggle
  ;;
"Clipboard Manager")
  qs -c end4-pC ipc call search clipboardToggle
  ;;
"Text Editor")
 ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'kate' 'gnome-text-editor' 'emacs'
  ;;
"VS Code")
 code
  ;;
"Music Player")
  ~/.config/hypr/hyprland/scripts/launch_first_available.sh 'rhythmbox'
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Window ━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"Cycle Window Focus")
  $HOME/.config/hypr/custom/scripts/LuaCycleWindow.sh next
  ;;
"Focus to Window ")
  hyprctl dispatch 'hl.dsp.focus({direction = "l"})'
  ;;
"Focus to Window ")
  hyprctl dispatch 'hl.dsp.focus({direction = "r"})'
  ;;
"Focus to Window ")
  hyprctl dispatch 'hl.dsp.focus({direction = "u"})'
  ;;
"Focus to Window ")
  hyprctl dispatch 'hl.dsp.focus({direction = "d"})'
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Eye-Candy ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"Toggle Blur")
  $customScripts/ChangeBlur.sh
  ;;
"Select Wallpaper")
  qs -c end4-pC ipc call wallpaperSelector toggle
  ;;
"Random Wallpaper")
  qs -c end4-pC ipc call wallpaperSelector random
  ;;
"Toggle Theme Mode")
  qs -c end4-pC ipc call theme toggleLightDark
  ;;
"Restart Widgets")
  killall ydotool qs quickshell
  qs -c $qsConfig &
  ;;
"Change Bar Style")
  qs -c end4-pC ipc call panelFamily cycle
  ;;
"Color Picker")
  hyprpicker -a
  ;;
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━ Media ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
"Sound App")
~/.config/hypr/hyprland/scripts/launch_first_available.sh 'pavucontrol-qt' 'pavucontrol'
  ;;
"Decrease Volume")
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-
  ;;
"Increase Volume")
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+ -l 1.5
  ;;
"Toggle Mute (Speaker)")
  wpctl set-mute @DEFAULT_SINK@ toggle
  ;;
"Toggle Mute (Mic)")
  wpctl set-mute @DEFAULT_SINK@ toggle
  ;;
"Media Pause/Play")
  $customScripts/MediaCtrl.sh --pause
  ;;
"Media Play-Next")
  $customScripts/MediaCtrl.sh --nxt
  ;;
"Media Play-Prev")
  $customScripts/MediaCtrl.sh --prv
  ;;
"Increase Brightness")
  swayosd-client --brightness raise
  ;;
"Decrease Brightness")
  swayosd-client --brightness lower
  ;;
"Move Window to ")
hyprctl dispatch 'hl.dsp.window.move({direction = "l"})'
  ;;
"Move Window to ")
hyprctl dispatch 'hl.dsp.window.move({direction = "r"})'
  ;;
"Move Window to ")
hyprctl dispatch 'hl.dsp.window.move({direction = "u"})'
  ;;
"Move Window to ")
hyprctl dispatch 'hl.dsp.window.move({direction = "d"})'
  ;;
"Move Window with Mouse")
  hyprctl dispatch movewindow
  ;;
*)
  echo "Unknown: $selected"
  exit 1
  ;;
esac
# Play-Next
