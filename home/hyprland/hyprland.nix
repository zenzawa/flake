{...}: {
  home.file.".config/hypr/hyprland.lua".source = ../../dots/hyprland/hyprland.lua;
  home.file.".config/hypr/monitors.lua".source = ../../dots/hyprland/monitors.lua;
  home.file.".config/hypr/env.lua".source = ../../dots/hyprland/env.lua;
  home.file.".config/hypr/autostart.lua".source = ../../dots/hyprland/autostart.lua;
  home.file.".config/hypr/config.lua".source = ../../dots/hyprland/config.lua;
  home.file.".config/hypr/animations.lua".source = ../../dots/hyprland/animations.lua;
  home.file.".config/hypr/binds.lua".source = ../../dots/hyprland/binds.lua;
  home.file.".config/hypr/windowrules.lua".source = ../../dots/hyprland/windowrules.lua;

  home.file.".config/hypr/hypridle.conf".source = ../../dots/hyprland/hypridle.conf;

  imports = [
    ./hyprlock.nix
  ];
}
