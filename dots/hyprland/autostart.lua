hl.on("hyprland.start", function()
  hl.exec_cmd("waybar")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("nm-applet")
  hl.exec_cmd("swaync")
  hl.exec_cmd("swayosd-server")
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("awww img ~/flake/assets/wallpapers/saku.png")
  hl.exec_cmd("fcitx5")
  -- "easyeffects --gapplication-service"
  -- ''nvidia-offload mpvpaper -o "no-audio --panscan=1.0 --loop" ALL ~/flake/assets/wallpapers/biboo.mp4''
end)
