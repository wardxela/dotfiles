{
  description = "wardxela darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
  let
    configuration = { pkgs, config, ... }: {
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [
          pkgs.chezmoi
          pkgs.zoxide
          pkgs.eza
          pkgs.fish
          pkgs.fastfetch
          pkgs.bun
          pkgs.neovim
          pkgs.gitui
        ];

      fonts.packages = [
        ( pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; } )
      ];

      system.defaults = {
        dock.autohide = true;
        dock.mru-spaces = false;
        dock.persistent-apps = [
          "/Applications/Arc.app"
          "/Applications/Discord.app"
          "/Applications/Spotify.app"
          "/Applications/Visual Studio Code.app"
          "/Applications/Zed.app"
          "/Applications/ChatGPT.app"
        ];
        finder.FXPreferredViewStyle = "clmv";
        finder.AppleShowAllExtensions = true;
      };

      # Auto upgrade nix package and the daemon service.
      services.nix-daemon.enable = true;
      # nix.package = pkgs.nix;

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 5;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#Tyurinovs-MacBook-Air
    darwinConfigurations."Tyurinovs-MacBook-Air" = nix-darwin.lib.darwinSystem {
      modules = [ configuration ];
    };

    # Expose the package set, including overlays, for convenience.
    darwinPackages = self.darwinConfigurations."Tyurinovs-MacBook-Air".pkgs;
  };
}
