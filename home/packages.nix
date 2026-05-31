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
    mpvpaper
    sourceHighlight
    openssl
    proton-vpn
    lsof
    wlsunset
    miktex
  ];

  apps = with pkgs; [
    easyeffects
    songrec
    peaclock
    lazygit
    nicotine-plus
    galaxy-buds-client
    celluloid
    vlc
    anki-bin
    brave
    telegram-desktop
    qalculate-gtk
    vesktop
    discord
    upscayl
    hyprshot
    openutau
  ];

  dev = with pkgs; [
    go
    podman-desktop
    ghostty
    yaak
    nasm
    nodejs
    python3
    pnpm
    deno
    rustup
    jq # json processor
    antigravity-fhs
    octaveFull
  ];

  i3 = with pkgs; [
    # Essential i3 packages
    i3lock
    i3status-rust
    rofi
    dunst
    picom
    feh

    # System utilities
    xss-lock
    scrot

    # bb
    firefox
  ];

  stable = with pkgs-stable; [
    kew
    qbittorrent
  ];
in {
  home.packages = systemPackages ++ utils ++ apps ++ dev ++ i3 ++ stable;
}
