{inputs, ...}: {
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./bootloader.nix
    ./devices.nix
    ./displayManager.nix
    ./environment.nix
    ./graphics.nix
    ./hyprland.nix
    ./locale.nix
    ./networking.nix
    ./packages.nix
    ./plasma.nix
    ./programs.nix
    # ./searx.nix
    ./ssh.nix
    ./steam.nix
    ./stylix.nix
    ./user.nix
    ./virtualisation.nix
  ];

  nix.nixPath = ["nixpkgs=${inputs.nixpkgs}"];
  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = ["nix-command" "flakes"];

  nix.gc = {
    automatic = true;
    dates = "weekly";
  };

  nix.settings.auto-optimise-store = true;

  # -------------------- LOCALIZATION --------------------------
  time.timeZone = "Asia/Tokyo";
  location.provider = "geoclue2";
  location.latitude = "52";
  location.longitude = "85";

  # ------------------- ZRAM -----------------------------------
  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "zstd";
    priority = 5;
  };
}
