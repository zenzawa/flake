-- Browsers / apps that need full opacity active, 0.85 inactive
for _, cls in ipairs({
  "zen-beta",
  "zen-twilight",
  "zen",
  "code",
  "brave-browser",
  "org.telegram.desktop",
  "org.nicotine_plus.Nicotine",
  "webstorm",
  "vesktop",
  "yaak-app",
  "jetbrains-studio",
  "jetbrains-rustrover",
  "Anki",
  "org.qbittorrent.qBittorrent",
  "Ryujinx",
  "antigravity",
  "discord",
  ".virt-manager-wrapped",
}) do
  hl.window_rule({ opacity = "1.0 override 0.85 override" }, { class = cls })
end

-- Vesktop: slightly lower inactive
hl.window_rule({ opacity = "1.0 override 0.8 override" }, { class = "vesktop" })

-- Terminals
hl.window_rule({ opacity = "0.9 override 0.8 override" }, { class = "kitty" })
hl.window_rule({ opacity = "0.9 override 0.8 override" }, { class = "com.mitchellh.ghostty" })

-- Media / full-opacity both states
hl.window_rule({ opacity = "1.0 override 1.0 override" }, { title = "Spotify" })
hl.window_rule({ opacity = "1.0 override 1.0 override" }, { class = "io.github.celluloid_player.Celluloid" })
hl.window_rule({ opacity = "1.0 override 1.0 override" }, { class = "io.bassi.Amberol" })

-- File manager
hl.window_rule({ opacity = "0.95 override 0.85 override" }, { class = "nautilus" })

-- kew (music player)
hl.window_rule({ opacity = "0.85 override 0.8 override" }, { title = "^kew.*" })

-- zen "Save Image" dialog – fixed size
hl.window_rule({ size = { 800, 600 } }, { class = "zen", title = "Save Image" })

-- -- ── Layer rules ──────────────────────────────────────────────
hl.layer_rule({ blur = true }, { namespace = "swaync-control-center" })
hl.layer_rule({ blur = true }, { namespace = "swaync-notification-window" })
