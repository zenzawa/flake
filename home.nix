{
  inputs,
  username,
  ...
}: {
  home.username = username;
  home.homeDirectory = ''/home/${username}'';

  imports = [
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
    ./home/waybar.nix
    ./home/wireplumber.nix
    ./home/zsh.nix
  ];

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
