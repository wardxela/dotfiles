{
  description = "wardxela darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs =
    inputs@{
      self,
      nix-darwin,
      nixpkgs,
    }:
    let
      configuration =
        { pkgs, ... }:
        {
          fonts.packages = [
            pkgs.nerd-fonts.jetbrains-mono
          ];

          nix.settings.experimental-features = "nix-command flakes";

          # Set Git commit hash for darwin-version.
          system.configurationRevision = self.rev or self.dirtyRev or null;

          # Used for backwards compatibility, please read the changelog before changing.
          # $ darwin-rebuild changelog
          system.stateVersion = 5;

          nixpkgs.hostPlatform = "aarch64-darwin";
        };
    in
    {
      # Build darwin flake using:
      # $ darwin-rebuild build --flake .#Tyurinovs-MacBook-Air
      darwinConfigurations."Tyurinovs-MacBook-Air" = nix-darwin.lib.darwinSystem {
        modules = [
          ./programs.nix
          ./homebrew.nix
          ./system.nix
          ./hot-keys.nix
          ./launch-agents.nix
          configuration
        ];
      };

      # Expose the package set, including overlays, for convenience.
      darwinPackages = self.darwinConfigurations."Tyurinovs-MacBook-Air".pkgs;
    };
}
