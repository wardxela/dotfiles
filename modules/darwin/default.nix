{ ... }:

{
  imports = [
    ./system.nix
    ./packages.nix
    ./programs.nix
    ./services.nix
    ./launchd.nix
  ];
}
