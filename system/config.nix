{inputs, ...}: {
    imports = [
      ./bootloader.nix
      ./displayManager.nix
    ];

    nixpkgs.config.allowUnfree = true;
  }
