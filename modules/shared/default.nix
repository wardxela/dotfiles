{ inputs, ... }:

{
  imports = [ ./stylix.nix ];

  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.extraSpecialArgs = { inherit inputs; };

  time.timeZone = "Europe/Moscow";

  programs.fish.enable = true;
}
