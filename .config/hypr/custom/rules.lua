-- get client name via (hyprctl clients)
hl.window_rule({
  match = {
    class = "^(obsidian)$",
  },
  workspace = "3",
})

-- email clients
hl.window_rule({
  match = {
    class = "^(BlueMail)$",
  },
  workspace = "5 silent",
})
