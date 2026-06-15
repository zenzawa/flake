-- Browsers / apps that need full opacity active, 0.85 inactive
for _, cls in ipairs({
  "zen-beta",
  "zen-twilight",
  "zen",
  "firefox",
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
  "org.wireshark.Wireshark",
  "net.lutris.Lutris",
}) do
  hl.window_rule({
    match = { class = cls },
    opacity = "1.0 override 0.85 override",
  })
end

-- Vesktop: slightly lower inactive
hl.window_rule({ match = { class = "vesktop" }, opacity = "1.0 override 0.8 override" })

-- Terminals
hl.window_rule({ match = { class = "kitty" }, opacity = "0.9 override 0.8 override" })
hl.window_rule({ match = { class = "com.mitchellh.ghostty" }, opacity = "0.9 override 0.8 override" })

-- Media / full-opacity both states
hl.window_rule({ match = { title = "Spotify" }, opacity = "1.0 override 1.0 override" })
hl.window_rule({ match = { class = "io.github.celluloid_player.Celluloid" }, opacity = "1.0 override 1.0 override" })
hl.window_rule({ match = { class = "io.bassi.Amberol" }, opacity = "1.0 override 1.0 override" })

-- File manager
hl.window_rule({ match = { class = "nautilus" }, opacity = "0.95 override 0.85 override" })

-- kew (music player)
hl.window_rule({ match = { title = "^kew.*" }, opacity = "0.85 override 0.8 override" })

-- zen "Save Image" dialog – fixed size
hl.window_rule({ match = { class = "zen", title = "Save Image" }, size = { 800, 600 } })

-- -- ── Layer rules ──────────────────────────────────────────────
hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur = true })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur = true })

hl.window_rule({
  match = {class = "gjs"},
  float = true
})
