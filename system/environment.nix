{...}: {
  environment.sessionVariables = {
    # If your cursor becomes invisible
    WLR_NO_HARDWARE_CURSORS = "1";
    # hint electron apps to use wayland
    NIXOS_OZONE_WL = "1";
    # fcitx5
    XMODIFIERS = "@im=fcitx";
    OLLAMA_HOST= "0.0.0.0:11434";
  };
}
