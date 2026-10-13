{pkgs, ...}: {
  programs.cava = {
    enable = true;
    package = pkgs.cava;

    settings = {
      general = {
        framerate = 60;
        bar_width = 5;
        bar_spacing = 1;
      };
    };
  };
}
