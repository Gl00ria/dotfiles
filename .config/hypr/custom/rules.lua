-- get client name via (hyprctl clients)
hl.window_rule({
  match = {
    class = "^(firefox)$",
  },
  workspace = "2",
})

hl.window_rule({
  match = {
    class = "^(obsidian)$",
  },
  workspace = "3",
})

-- email clients
hl.window_rule({
  match = {
    -- class = "^(BlueMail)$",
    class = "^([Tt]hunderbird|org.mozilla.Thunderbird)$",
  },
  workspace = "5 silent",
})
