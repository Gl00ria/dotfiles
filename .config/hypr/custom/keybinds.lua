-- YOU... Yes YOU!!!
-- I'm on a split keeb... below keybinds are going to twist your fingers :)
-- however, you can still (SUPER + H) to search & execute a command till you sort it out
--
-- TIP:
-- Reserved Combos:
-- (SUPER + ?)                              --> Apps
-- (CTRL + ALT + ?)                         --> Utilities
-- (SHIFT + SUPER + T)                      --> Eye Candy
-- (CTRL + SUPER + ?)                       --> Windows focus
-- (SUPER + SHIFT + mouse_'scroll UP/DOWN') --> send window to workspace
-- (SUPER + 'NUM')                          --> focus on workspace '1-0'
--
-- usefull quickshell cmds
-- qs -c ii ipc show
-- qs -c ii ipc call overlay toggle
--
-- (ToDoS) are stored in (/home/gl00ria/.local/state/quickshell/user)
require("hyprland.lib")
require("hyprland.variables")
if is_file_exists(HOME .. "/.config/hypr/custom/variables.lua") then
  require("custom.variables")
end
local qsScripts = "$HOME/.config/quickshell/$qsConfig/scripts"
local qsIpcCall = "qs -c $qsConfig ipc call"
local qsIsAlive = qsIpcCall .. " TEST_ALIVE"
local customScripts = "$HOME/.config/hypr/custom/scripts"

-- life saver
hl.bind("SUPER + H", hl.dsp.exec_cmd(customScripts .. "/keybind_exec.sh"), { description = "Search/Execute Keybinds" })
-- hl.bind("SUPER + H", hl.dsp.global("quickshell:cheatsheetToggle"), { description = "Utils: Toggle cheatsheet" })
hl.bind("SUPER + SUPER_L", hl.dsp.global("quickshell:searchToggleRelease"), { description = "Utils: Toggle search" })
hl.bind("SUPER + SUPER_R", hl.dsp.global("quickshell:searchToggleRelease"))

--
-- Utils
-- qs -c ii ipc show
-- qs -c ii ipc call overlay toggle
--
hl.bind("CTRL + ALT + I", hl.dsp.exec_cmd(settingsApp), { description = "Utils: Settings app" })
-- hl.bind("CTRL + ALT + M", hl.dsp.global("quickshell:sessionToggle"), { description = "Utils: Toggle session menu" })
hl.bind(
  "CTRL + ALT + Semicolon",
  hl.dsp.global("quickshell:oskToggle"),
  { description = "Utils: Toggle on-screen keyboard" }
)
hl.bind("CTRL + ALT + W", hl.dsp.global("quickshell:barToggle"), { description = "Utils: Toggle bar" })
hl.bind("SUPER + L", hl.dsp.exec_cmd("loginctl lock-session"), { description = "Utils: LockScreen" })
-- hl.bind("SHIFT + SUPER + ALT + T", hl.dsp.exec_cmd("qs -p $HOME/.config/quickshell/$qsConfig/welcome.qml"))
hl.bind("CTRL + ALT + G", hl.dsp.global("quickshell:overlayToggle"), { description = "Utils: Toggle widget overlay" })
hl.bind(
  "CTRL + ALT + Delete",
  hl.dsp.exec_cmd("kitty --start-as=fullscreen --title all_is_kitty sh -c 'btop'"),
  { description = "Utils: Task manager" }
)
-- hl.bind("SUPER_L", hl.dsp.global("quickshell:workspaceNumber"), { ignore_mods = true, transparent = true })
-- hl.bind("SUPER_R", hl.dsp.global("quickshell:workspaceNumber"), { ignore_mods = true, transparent = true })
hl.bind(
  "SUPER_L",
  hl.dsp.global("quickshell:workspaceNumber"),
  { ignore_mods = true, transparent = true, release = true }
)
hl.bind(
  "SUPER_R",
  hl.dsp.global("quickshell:workspaceNumber"),
  { ignore_mods = true, transparent = true, release = true }
)
-- hl.bind("", hl.dsp.global("quickshell:overviewWorkspacesToggle"), { description = "Utils: Toggle overview" })
hl.bind(
  "CTRL + ALT + O",
  hl.dsp.global("quickshell:regionOcr"),
  { description = "Utils: Character recognition >> clipboard" }
)
hl.bind("CTRL + ALT + S", hl.dsp.global("quickshell:regionSearch"), { description = "Utils: Google Image Search" })
hl.bind(
  "CTRL + ALT + T",
  hl.dsp.global("quickshell:screenTranslate"),
  { description = "Utils: Translate screen content" }
)

--
-- Apps
--
hl.bind("SUPER + K", hl.dsp.exec_cmd(terminal), { description = "Apps: Terminal" })
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser), { description = "Apps: Browser" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager), { description = "Apps: File manager" })
hl.bind("SUPER + O", hl.dsp.exec_cmd(notesApp), { description = "Apps: Obsidian" })
hl.bind("SUPER + G", hl.dsp.exec_cmd("xhost +SI:localuser:root && gparted"), { description = "Apps: Gparted" })
hl.bind("SUPER + N", hl.dsp.global("quickshell:sidebarRightToggle"), { description = "Utils: Right Side Bar Menu" })
hl.bind("SUPER + V", hl.dsp.global("quickshell:overviewClipboardToggle"), { description = "Utils: Clipboard" })
hl.bind("SUPER + T", hl.dsp.exec_cmd(textEditor), { description = "Apps: Text editor" })
hl.bind("SUPER + C", hl.dsp.exec_cmd("code"), { description = "Apps: Code editor" })
-- hl.bind("CTRL + SUPER + SHIFT + ALT + W", hl.dsp.exec_cmd(officeSoftware), { description = "Apps: Office software" })

--
-- Recording
--
hl.bind(
  "SHIFT + SUPER + R",
  hl.dsp.exec_cmd(qsScripts .. "/videos/record.sh --fullscreen --sound"),
  { locked = true, description = "Utils: Record screen (with sound)" }
)
hl.bind("", hl.dsp.exec_cmd(qsScripts .. "/videos/record.sh --fullscreen"), { locked = true }) -- without sound
hl.bind(
  "",
  hl.dsp.global("quickshell:regionRecord"),
  { locked = true, description = "Recording: Record region (no sound)" }
)
hl.bind("", hl.dsp.exec_cmd(qsIsAlive .. " || " .. qsScripts .. "/videos/record.sh"), { locked = true })
hl.bind("", hl.dsp.global("quickshell:regionRecord"), { locked = true })

--
-- Screenshot
--
local grimhyprctl = "grim -o \"$(hyprctl activeworkspace -j | jq -r '.monitor')\""
-- hl.bind("Print", hl.dsp.global("quickshell:regionScreenshot"), { description = "Utils: Screen snip" })
-- hl.bind("CTRL + Print", hl.dsp.exec_cmd(grimhyprctl .. " - | wl-copy"), { locked = true, non_consuming = true })
hl.bind(
  "Print",
  hl.dsp.exec_cmd(
    "mkdir -p $(xdg-user-dir PICTURES)/Screenshots && "
      .. grimhyprctl
      .. " $(xdg-user-dir PICTURES)/Screenshots/Screenshot_\"$(date '+%d-%m-%Y_%H.%M.%S')\".png"
  ),
  { locked = true, non_consuming = true, description = "Utils: Screenshot >> clipboard & file" }
)
hl.bind("CTRL + Print", hl.dsp.global("quickshell:regionScreenshot"), { description = "Utils: Screen snip" })

--
-- Eye Candy
--
hl.bind("", hl.dsp.global("quickshell:wallpaperSelectorToggle"), { description = "Eye-Candy: Change wallpaper" })
hl.bind(
  "SHIFT + SUPER + C",
  hl.dsp.exec_cmd("hyprpicker -a"),
  { description = "Eye-Candy: Pick color #RRGGBB >> clipboard" }
)
hl.bind(
  "SHIFT + SUPER + W",
  hl.dsp.global("quickshell:wallpaperSelectorRandom"),
  { description = "Eye-Candy: Random wallpaper" }
)
hl.bind(
  "SHIFT + SUPER + T",
  hl.dsp.global("quickshell:toggleLightDark"),
  { description = "Eye-Candy: Toggle Light/Dark Theme" }
)
hl.bind(
  "",
  hl.dsp.exec_cmd("killall ydotool qs quickshell; qs -c $qsConfig &"),
  { description = "Eye-Candy: Restart widgets" }
)
hl.bind(
  "SHIFT + SUPER + P",
  hl.dsp.global("quickshell:panelFamilyCycle"),
  { description = "Eye-Candy: Cycle panel family" }
)
hl.bind("", hl.dsp.global("quickshell:overviewEmojiToggle"), { description = "Eye-Candy: Emojies" })

--
-- Media, Volume & Hardware
--
hl.bind("SUPER + M", hl.dsp.global("quickshell:mediaControlsToggle"), { description = "Media: Toggle media controls" })
hl.bind("", hl.dsp.exec_cmd(volumeMixer), { description = "Media: Volume mixer" })
hl.bind("", hl.dsp.exec_cmd("swayosd-client --caps-lock"))
hl.bind("", hl.dsp.exec_cmd("swayosd-client --scroll-lock"))
hl.bind("", hl.dsp.exec_cmd("swayosd-client --num-lock"))
hl.bind("xf86AudioNext", hl.dsp.exec_cmd(customScripts .. "/MediaCtrl.sh --nxt"), { description = "Media: Run Next" })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(customScripts .. "/MediaCtrl.sh --prv"), { description = "Media: Run Prev" })
hl.bind("xf86AudioPause", hl.dsp.exec_cmd(customScripts .. "/MediaCtrl.sh --pause"), { description = "Media: Pause" })
hl.bind("xf86AudioPlay", hl.dsp.exec_cmd(customScripts .. "/MediaCtrl.sh --pause"), { description = "Media: Pause" })
hl.bind("xf86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_SINK@ toggle"), { locked = true })
hl.bind("xf86audiomute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_SINK@ toggle"), { locked = true })
hl.bind(
  "XF86AudioRaiseVolume",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+ -l 1.5"),
  { locked = true, repeating = true }
)
hl.bind(
  "XF86AudioLowerVolume",
  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%-"),
  { locked = true, repeating = true }
)
hl.bind(
  "XF86MonBrightnessUp",
  hl.dsp.exec_cmd(qsIpcCall .. " brightness increment || brightnessctl s 5%+"),
  { locked = true, repeating = true }
)
hl.bind(
  "XF86MonBrightnessDown",
  hl.dsp.exec_cmd(qsIpcCall .. " brightness decrement || brightnessctl s 5%-"),
  { locked = true, repeating = true }
)

--
-- AI
-- TODO:
-- hl.bind("SUPER + A", hl.dsp.global("quickshell:sidebarLeftToggle"), { description = "AI: Toggle left sidebar" })
-- hl.bind("SUPER + ALT + A", hl.dsp.global("quickshell:sidebarLeftToggleDetach"))
-- hl.bind("SUPER + SHIFT + ALT + mouse:273", hl.dsp.exec_cmd(hyprScripts .. "/ai/primary-buffer-query.sh"),
--     { description = "Utilities: Generate AI summary for selected text" })
-- -- (requires a running ollama model)

--
-- Windows
--
hl.bind(
  "ALT + Tab",
  hl.dsp.exec_cmd("$HOME/.config/hypr/custom/scripts/LuaCycleWindow.sh next"),
  { description = "Window: Cycle Focus" }
)
hl.bind("SUPER + Escape", hl.dsp.window.close(), { description = "Window: Close Current Window" })
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true, description = "Window: Drag" })
hl.bind("SUPER + mouse:274", hl.dsp.window.drag(), { mouse = true, description = "Window: Drag" })
-- hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true, description = "Window: Resize" })
-- Make window not amogus large
hl.bind("CTRL + SUPER + Backslash", hl.dsp.window.resize({ x = 640, y = 480, "exact" }))
--#/# bind = SUPER + ←/↑/→/↓,, -- Focus in direction
for i = 1, 4 do
  local arrowkey = { "h", "l", "k", "j" }
  local focusdir = { "l", "r", "u", "d" }
  hl.bind(
    "CTRL + ALT + " .. arrowkey[i],
    hl.dsp.focus({ direction = focusdir[i] }),
    { description = "Window: Focus " .. arrowkey[i] }
  )
end
for i = 1, 2 do
  local arrowkey = { "BracketLeft", "BracketRight" }
  local focusdir = { "l", "r" }
  hl.bind("SUPER + " .. arrowkey[i], hl.dsp.focus({ direction = focusdir[i] }))
end
-- #/# bind = SUPER + SHIFT, ←/↑/→/↓,, -- Move in direction
for i = 1, 4 do
  local arrowkey = { "y", "o", "i", "u" }
  local focusdir = { "l", "r", "u", "d" }
  hl.bind(
    "SUPER + CTRL + ALT + " .. arrowkey[i],
    hl.dsp.window.move({ direction = focusdir[i] }),
    { description = "Window: Move " .. arrowkey[i] }
  )
end
hl.bind("ALT + F4", function()
  hl.exec_cmd('notify-send "Wrong close keybind" "Super+Q to close. Use Alt+F4 for Windows VMs" -a Hyprland')
end, { non_consuming = true })
-- --# Window split ratio
-- hl.bind("SUPER + Semicolon", hl.dsp.layout("splitratio -0.1"), { repeating = true })
-- hl.bind("SUPER + Apostrophe", hl.dsp.layout("splitratio +0.1"), { repeating = true })
--# Positioning mode
hl.bind("", hl.dsp.window.float({ action = "toggle" }), { description = "Window: Float/Tile" })
hl.bind(
  "SUPER + F",
  hl.dsp.window.fullscreen({ mode = "maximized", action = "toggle" }),
  { description = "Window: Maximize" }
)
hl.bind(
  "SUPER + SHIFT + F",
  hl.dsp.window.fullscreen({ mode = "fullscreen", action = "toggle" }),
  { description = "Window: Fullscreen" }
)
hl.bind("SUPER + P", hl.dsp.window.pin(), { description = "Window: Pin" })
-- hl.bind(
--   "",
--   hl.dsp.window.fullscreen_state({ internal = 0, client = 3, action = "toggle" }),
--   { description = "Window: Fullscreen spoof" }
-- )

--
-- Workspaces
--
--# Switching
--#/# bind = SUPER, Hash,, -- Focus workspace -- (1, 2, 3,...)
for i = 1, 10 do
  hl.bind("SUPER + " .. (i % 10), function()
    hl.dispatch(hl.dsp.focus({ workspace = workspace_in_group(i) }))
  end, { description = "Workspace: Focus " .. i })
end
--# We also use raw keycodes because some keyboard layouts register number keys as different chars. The codes can be verified with `wev`
for i = 1, 10 do
  local numberkey = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
  hl.bind("SUPER + code:" .. numberkey[i], function()
    hl.dispatch(hl.dsp.focus({ workspace = workspace_in_group(i) }))
  end)
end
--# keypad numbers
for i = 1, 10 do
  local numpadkey = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
  hl.bind("SUPER + code:" .. numpadkey[i], function()
    hl.dispatch(hl.dsp.focus({ workspace = workspace_in_group(i) }))
  end)
end
-- --#/# bind = CTRL+SUPER, ←/→,, -- Focus left/right
-- --#/# bind = CTRL+SUPER+ALT, ←/→,, -- # [hidden] Focus busy left/right
-- -- i dont use it anywya
-- for i = 1, 2 do
--   local keys = { "h", "l" }
--   local prefix = { "r-", "r+" }
--   local descdir = { "left", "right" }
--   hl.bind(
--     "CTRL + SUPER + " .. keys[i],
--     hl.dsp.focus({ workspace = prefix[i] .. "1" }),
--     { description = "Workspace: Focus " .. descdir[i] }
--   )
-- end
-- --#/# bind = SUPER, Scroll ↑/↓,, -- Focus left/right
-- for i = 1, 4 do
--   local key = { "SUPER + mouse_up", "SUPER + mouse_down" }
--   local keycombos = { key[1], key[2], "CTRL + " .. key[1], "CTRL + " .. key[2] }
--   local prefix = { "+", "-", "r+", "r-" }
--   hl.bind(keycombos[i], hl.dsp.focus({ workspace = prefix[i] .. "1" }))
-- end

-- I use the mouse version only
-- --#/# bind = SUPER+ALT, Hash,, -- Send to workspace -- (1, 2, 3,...)
-- for i = 1, 10 do
--   hl.bind("SUPER + ALT + " .. (i % 10), function()
--     hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
--   end, { description = "Window: Send to workspace " .. i })
-- end
--# We also use raw keycodes because some keyboard layouts register number keys as different chars. The codes can be verified with `wev`
-- for i = 1, 10 do
--     local numberkey = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }
--     hl.bind("SUPER + ALT + code:" .. numberkey[i], function()
--         hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
--     end)
-- end
--# keypad numbers
-- for i = 1, 10 do
--   local numpadkey = { 87, 88, 89, 83, 84, 85, 79, 80, 81, 90 }
--   hl.bind("SUPER + ALT + code:" .. numpadkey[i], function()
--     hl.dispatch(hl.dsp.window.move({ workspace = workspace_in_group(i), follow = false }))
--   end)
-- end
-- # #/# bind = SUPER+SHIFT, Scroll ↑/↓,, -- Send to workspace left/right
for i = 1, 4 do
  local key = { "SUPER + SHIFT + mouse_", "SUPER + ALT + mouse_" }
  local keycombos = { key[1] .. "down", key[1] .. "up", key[2] .. "down", key[2] .. "up" }
  local prefix = { "r-", "r+", "r-", "r+" }
  hl.bind(keycombos[i], hl.dsp.window.move({ workspace = prefix[i] .. "1" }))
end

--#/# bind = SUPER+SHIFT, Page_↑/↓,, -- Send to workspace left/right
-- for i = 1, 2 do
--   local keydirs = { "Up", "Down" }
--   local prefix = { "r-", "r+" }
--   local descdir = { "left", "right" }
--   hl.bind(
--     "SUPER + SHIFT + Page_" .. keydirs[i],
--     hl.dsp.window.move({ workspace = prefix[i] .. "1" }),
--     { description = "Window: Send to workspace " .. descdir[i] }
--   )
-- end
-- for i = 1, 4 do
--   local key = { "SUPER + ALT + Page_", "CTRL + SUPER + SHIFT + " }
--   local keycombos = { key[1] .. "down", key[1] .. "up", key[2] .. "Right", key[2] .. "Left" }
--   local prefix = { "r+", "r-", "r+", "r-" }
--   hl.bind(keycombos[i], hl.dsp.window.move({ workspace = prefix[i] .. "1" })) -- # [hidden]
-- end
