{
  pkgs,
  pkgs-stable,
  ...
}: let
  systemPackages = with pkgs; [
    dconf
    qt6Packages.qt6ct
    qt6.qtwayland
    clang
    networkmanagerapplet
    awww
    pywal
    file
    tree
    git-lfs
    wtype
    kdePackages.dolphin
  ];

  utils = with pkgs; [
    yazi
    btop
    htop
    ripgrep
    bat
    zip
    xz
    unzip
    fastfetch
    gpustat
    gdu
    mpv
    blueman
    brightnessctl
    pavucontrol
    steam-run-free
    yt-dlp
    ffmpeg
    sourceHighlight
    openssl
    proton-vpn
    lsof
    wlsunset
    gpu-screen-recorder-gtk
  ];

  apps = with pkgs; [
    easyeffects
    songrec
    lazygit
    nicotine-plus
    galaxy-buds-client
    celluloid
    vlc
    brave
    firefox
    telegram-desktop
    qalculate-gtk
    discord
    upscayl
    hyprshot
    openutau
    localsend
  ];

  dev = with pkgs; [
    podman-desktop
    yaak
    nasm
    nodejs
    python3
    pnpm
    deno
    rustup
    jq # json processor
    antigravity-fhs
  ];

  # i3 = with pkgs; [
  #   # Essential i3 packages
  #   i3lock
  #   i3status-rust
  #   rofi
  #   dunst
  #   picom
  #   feh
  #
  #   # System utilities
  #   xss-lock
  #   scrot
  #
  #   # bb
  #   firefox
  # ];

  stable = with pkgs-stable; [
    kew
    qbittorrent
    anki-bin
  ];
in {
  home.packages = systemPackages ++ utils ++ apps ++ dev ++ stable;
}
