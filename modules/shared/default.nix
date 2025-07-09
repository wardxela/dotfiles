{ inputs, ... }:

{
  imports = [
    ./packages.nix
    ./programs.nix
    ./stylix.nix
    ./system.nix
  ];

  nixpkgs.config.allowUnfree = true;
  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.extraSpecialArgs = { inherit inputs; };
  time.timeZone = "Europe/Moscow";
}
