{
  description = "baka flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager.url = "github:nix-community/home-manager/release-26.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    minegrub-world-sel-theme.url = "github:zenzawa/minegrub-world-sel-theme";

    stylix.url = "github:nix-community/stylix/release-26.05";

    nixvim.url = "github:nix-community/nixvim/nixos-26.05";

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    nixvim,
    stylix,
    ...
  }: {
    # Please replace my-nixos with your hostname
    nixosConfigurations = {
      senzawa = nixpkgs.lib.nixosSystem rec {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;

          pkgs-unstable = import nixpkgs-unstable {
            # Refer to the `system` parameter from
            # the outer scope recursively
            inherit system;
            # To use Chrome, we need to allow the
            # installation of non-free software.
            config.allowUnfree = true;
          };
          username = "zenzawa";
          userpath = "/home/zenzawa";
        };
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.sharedModules = [nixvim.homeModules.nixvim];
            home-manager.users.zenzawa = import ./home.nix;
            home-manager.extraSpecialArgs = {
              pkgs-unstable = import nixpkgs-unstable {
                inherit system;
                config.allowUnfree = true;
              };

              username = "zenzawa";
              userpath = "/home/zenzawa";

              inherit inputs;
            };
          }
          inputs.minegrub-world-sel-theme.nixosModules.default
          stylix.nixosModules.stylix
        ];
      };
    };
  };
}
