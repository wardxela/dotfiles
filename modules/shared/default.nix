{ ... }:

{
  imports = [
    ./environment.nix
    ./packages.nix
    ./programs.nix
    ./system.nix
  ];

  # TODO: allow unfree packages explicitly (not globally)
  nixpkgs.config.allowUnfree = true;
  time.timeZone = "Europe/Moscow";
}
