{ ... }:

{
  imports = [
    ./environment.nix
    ./packages.nix
    ./programs.nix
    ./system.nix
  ];

  time.timeZone = "Europe/Moscow";
}
