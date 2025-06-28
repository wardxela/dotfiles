{ ... }:

{
  imports = [
    ./environment.nix
    ./packages.nix
    ./programs.nix
    ./system.nix
  ];

  nixpkgs.config.allowUnfree = true;
  time.timeZone = "Europe/Moscow";
}
