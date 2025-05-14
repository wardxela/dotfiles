{
  description = "wardxela darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    nur.url = "github:nix-community/NUR";
    nur.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      nix-darwin,
      nur,
      ...
    }:
    {
      darwinConfigurations."mac" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        inputs = { inherit inputs; };
        specialArgs = inputs;
        modules = [
          nur.modules.darwin.default
          ./system.nix
          ./packages.nix
          ./programs.nix
          ./services.nix
          ./hot-keys.nix
          ./launchd.nix
        ];
      };
    };
}
