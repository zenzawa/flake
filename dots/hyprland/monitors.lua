hl.monitor({
  output = "eDP-1",
  mode = "2560x1600@165",
  position = "auto",
  scale = 1.33,
})

hl.monitor({
  output = "eDP-2",
  mode = "2560x1600@165",
  position = "auto",
  scale = 1.33,
})

hl.monitor({
  output = "",
  mode = "preferred",
  position = "auto",
  scale = 1,
  mirror = "eDP-2",
})
