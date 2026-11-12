-- get client name via (hyprctl clients)
hl.window_rule({
  match = {
    -- class = "^(brave-browser)$",
    class = "^(firefox)$",
  },
  workspace = "2 silent",
  opacity = 0.90,
})

hl.window_rule({
  match = {
    class = "^(md.obsidian.Obsidian)$",
  },
  workspace = "5",
})

-- email clients
hl.window_rule({
  match = {
    -- class = "^(BlueMail)$",
    class = "^([Tt]hunderbird|org.mozilla.Thunderbird)$",
  },
  workspace = "4 silent",
})
