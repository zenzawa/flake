{userpath, ...}: {
  home.file."config/swaync/config.json".source = ../dots/swaync/config.json;
  home.file."config/swaync/style.css".source = ../dots/swaync/style.css;
  home.file."config/swaync/style" = {
    source = ../dots/swaync/style;
    recursive = true;
  };

  services.swaync = {
    enable = true;
  };

  services.swayosd = {
    enable = true;
    topMargin = 0.9;

    stylePath = "${userpath}/flake/dots/swayosd.css";
  };
}
