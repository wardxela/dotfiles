{
  description = "wardxela flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nur.url = "github:nix-community/NUR";
    nur.inputs.nixpkgs.follows = "nixpkgs";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs =
    inputs@{
      nix-darwin,
      home-manager,
      nur,
      ...
    }:
    {
      darwinConfigurations = {
        mac = nix-darwin.lib.darwinSystem {
          system = "aarch64-darwin";
          specialArgs = inputs;
          modules = [
            nur.modules.darwin.default
            ./systems/mac/configuration.nix
            home-manager.darwinModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.wardxela = ./systems/mac/home.nix;
            }
          ];
        };
      };
    };
}
