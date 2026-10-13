{pkgs, ...}: {
  programs.steam = {
    enable = true;

    extraCompatPackages = [pkgs.proton-ge-bin];
    gamescopeSession.enable = true;
  };

  programs.gamemode.enable = true;
}
