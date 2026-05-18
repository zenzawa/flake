hl.config({
  general = {
    allow_tearing = true,
    border_size = 3,
    gaps_in = 5,
    gaps_out = 6,
    layout = "dwindle",
    resize_on_border = true,
  },

  decoration = {
    active_opacity = 0.9,
    fullscreen_opacity = 1.0,
    inactive_opacity = 0.85,
    rounding = 10,
    blur = {
      brightness = 0.6,
      contrast = 3,
      enabled = true,
      ignore_opacity = true,
      new_optimizations = true,
      noise = 0.05,
      passes = 2,
      size = 8,
      vibrancy = 0.3,
      vibrancy_darkness = 0.3,
    },
  },

  input = {
    follow_mouse = 1,
    kb_layout = "us",
    kb_options = "caps:escape",
    kb_variant = "",
    sensitivity = 0.1,
    touchpad = {
      natural_scroll = true,
    },
  },

  misc = {
    disable_hyprland_logo = true,
    force_default_wallpaper = -1,
  },

  xwayland = {
    force_zero_scaling = true,
  },
})
