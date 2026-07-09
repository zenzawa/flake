{pkgs, ...}: {
  fonts.packages = with pkgs; [
    noto-fonts
    inter
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    nerd-fonts.jetbrains-mono
    nerd-fonts.departure-mono
  ];

  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/mountain.yaml";

    cursor = {
      name = "WhiteSur-cursors";
      size = 24;
      package = pkgs.runCommand "WhiteSur-cursors" {} ''
        mkdir -p $out/share/icons
        cp -r ${../assets/WhiteSur-cursors} $out/share/icons/WhiteSur-cursors
      '';
    };

    fonts = {
      sansSerif = {
        package = pkgs.noto-fonts;
        name = "Noto Sans";
      };

      serif = {
        package = pkgs.noto-fonts;
        name = "Noto Serif";
      };

      monospace = {
        package = pkgs.dejavu_fonts;
        name = "DejaVu Sans Mono";
      };
    };

    targets = {
      grub.enable = false;
    };
  };
}
