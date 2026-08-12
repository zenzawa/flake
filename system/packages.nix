{
  pkgs,
  pkgs-stable,
  ...
}: let
  system = with pkgs; [
    zsh
    kitty
    timeshift
    pulseaudio
    ntfs3g
    libnotify
    go-mtpfs
    qt5.qtquickcontrols2
    qt5.qtgraphicaleffects
    qt5.qtsvg
    kdePackages.qt5compat
    kdePackages.baloo
    cpuid
    playerctl
    xinit
    hypridle
    swayosd
    iw
  ];

  vulkan = with pkgs; [
    vulkan-tools
    vulkan-headers
    vulkan-loader
    vulkan-validation-layers
  ];

  dev = with pkgs-stable; [
    git
    wget
    gcc
    gnumake
    gdb
    docker-compose
    # (llama-cpp.override {cudaSupport = true;})
  ];

  apps = with pkgs; [
    (waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ ["-Dexperimental=true"];
    }))
    nautilus
    xclip
    wl-clipboard
  ];

  virt = with pkgs-stable; [
    distrobox
    qemu
    virt-manager
    virt-viewer
    virtiofsd
    spice
    spice-gtk
    spice-protocol
  ];

  evadm = pkgs.stdenv.mkDerivation {
    name = "evadm";
    src = ../dots/evadm;
    installPhase = ''
      mkdir -p $out/share/sddm/themes/evadm
      cp -r * $out/share/sddm/themes/evadm
    '';
  };
in {
  environment.systemPackages =
    system
    ++ vulkan
    ++ dev
    ++ apps
    ++ virt
    ++ [evadm];
}
