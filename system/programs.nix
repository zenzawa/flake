{
  inputs,
  pkgs,
  ...
}: {
  # Set the default editor to nvim
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    stdenv.cc.cc.lib # libstdc++, libgcc_s
    zlib
    openssl
  ];

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
