{
  description = "wardxela darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      self,
      nix-darwin,
      ...
    }:
    {
      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      darwinConfigurations."mac" = nix-darwin.lib.darwinSystem {
        system = "aarch64-darwin";
        inputs = { inherit inputs; };
        modules = [
          ./configuration.nix
          ./programs.nix
          ./homebrew.nix
          ./system.nix
          ./hot-keys.nix
          ./launch-agents.nix
        ];
      };
    };
}
