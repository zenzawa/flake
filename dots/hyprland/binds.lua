local terminal = "kitty"
local fileManager = "nautilus"
local browser = "zen || zen-beta || zen-twilight"
local nbrowser = "nvidia-offload zen || zen-beta || zen-twilight"
local menu = "rofi -show drun"

-- Core
hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + W", hl.dsp.window.kill())
hl.bind("SUPER + M", hl.dsp.exit())
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + F", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + P", hl.dsp.window.pseudo())
hl.bind("SUPER + Space", hl.dsp.layout("togglesplit"))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + G", hl.dsp.exec_cmd(nbrowser))
hl.bind("SUPER + C", hl.dsp.exec_cmd("~/.config/rofi/assets/wifimenu --rofi -s"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("pkill waybar || waybar"))
hl.bind("SUPER + N", hl.dsp.exec_cmd("pkill wlsunset || wlsunset -t 3500 -T 8000 -S 00:00"))
hl.bind("SUPER + T", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind("SUPER + Y", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
hl.bind("SUPER + S", hl.dsp.exec_cmd("hyprshot -m output"))

-- -- Resize with SUPER_SHIFT + arrow / WASD
hl.bind("SUPER + SHIFT + right", hl.dsp.window.resize({ x = 100, y = 0, relative = true }))
hl.bind("SUPER + SHIFT + left", hl.dsp.window.resize({ x = -100, y = 0 , relative = true }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.resize({ x = 0, y = 100, relaitve = true }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.resize({ x = 0, y = -100 , relative = true}))
hl.bind("SUPER + SHIFT + D", hl.dsp.window.resize({ x = 100, y = 0 , relative = true}))
hl.bind("SUPER + SHIFT + A", hl.dsp.window.resize({ x = -100, y = 0 , relative = true}))
hl.bind("SUPER + SHIFT + S", hl.dsp.window.resize({ x = 0, y = 100 , relative = true}))
hl.bind("SUPER + SHIFT + W", hl.dsp.window.resize({ x = 0, y = -100 , relative = true}))

-- -- Move windows
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({ direction = "l" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.window.move({ direction = "r" }))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({ direction = "u" }))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({ direction = "d" }))

-- -- Focus movement  (arrows + HJKL)
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))
hl.bind("SUPER + H", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + L", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + K", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + J", hl.dsp.focus({ direction = "d" }))

-- Alt-Tab
hl.bind("ALT + Tab", function()
  hl.dispatch(hl.dsp.window.cycle_next())
  hl.dispatch(hl.dsp.window.bring_to_top())
end)

-- Workspace switching (SUPER + 0–9)
for i = 1, 9 do
  hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
  hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end

hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Unicode / special key
hl.bind("Alt_R", hl.dsp.exec_cmd('wtype " "'))

-- Media keys (locked = works on lockscreen)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("swayosd-client --output-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("swayosd-client --input-volume mute-toggle"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("swayosd-client --playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("swayosd-client --playerctl next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("swayosd-client --playerctl previous"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("swayosd-client --playerctl stop"), { locked = true })

-- Volume / brightness (repeating = hold works)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("swayosd-client --output-volume raise"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("swayosd-client --output-volume lower"), { repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("swayosd-client --brightness +5"), { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("swayosd-client --brightness -5"), { repeating = true })
