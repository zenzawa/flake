{pkgs, ...}: {
  programs.steam = {
    enable = true;

    extraCompatPackages = [pkgs.proton-ge-bin];
    extraPackages = [pkgs.mangohud];
    gamescopeSession.enable = true;

    remotePlay.openFirewall = true;
  };
}
