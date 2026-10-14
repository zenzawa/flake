{
  inputs,
  username,
  ...
}: {
  imports = [
      inputs.zen-browser.homeModules.twilight
    ./home/neovim/init.nix
    ./home/btop.nix
    ./home/cava.nix
    ./home/fzf.nix
    ./home/git.nix
    ./home/kitty.nix
    ./home/launcher.nix
    ./home/notification.nix
    ./home/overdose.nix
    ./home/packages.nix
    ./home/pywal.nix
    ./home/theme.nix
    ./home/waybar.nix
    ./home/wireplumber.nix
    ./home/zen.nix
    ./home/zsh.nix
  ];

  home.username = username;
  home.homeDirectory = ''/home/${username}'';

  home.file.".config/yt-dlp/config".source = ./dots/yt-dlp.config;
  home.file.".config/yazi/yazi.toml".source = ./dots/yazi.toml;

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
