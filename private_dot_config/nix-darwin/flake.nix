{
  description = "wardxela darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs =
    inputs@{
      nix-darwin,
      ...
    }:
    {
      darwinConfigurations."mac" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        inputs = { inherit inputs; };
        specialArgs = inputs;
        modules = [
          ./system.nix
          ./hot-keys.nix
          ./launch-agents.nix
          ./programs.nix
          ./homebrew.nix
        ];
      };
    };
}
