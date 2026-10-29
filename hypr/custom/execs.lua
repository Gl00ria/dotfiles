hl.on("hyprland.start", function()
  hl.exec_cmd("firefox")

  hl.exec_cmd("kitty")

  -- OSD window for common actions like volume and capslock
  -- (https://github.com/ErikReider/SwayOSD)
  -- hl.exec_cmd("swayosd-server")

  hl.exec_cmd("udiskie")

  hl.exec_cmd("obsidian Obsidian_Root_Vault")
end)
