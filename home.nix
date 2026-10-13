{
  inputs,
  username,
  ...
}: {
  home.username = username;
  home.homeDirectory = ''/home/${username}'';

  imports = [
	./home/zsh.nix
	./home/neovim/init.nix
];


  home.stateVersion = "26.05";


  programs.home-manager.enable = true;
}
