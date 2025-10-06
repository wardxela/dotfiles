{ lib, pkgs, ... }:

{
  imports = [
    ../shared
    ./services.nix
    ./system.nix
  ];

  system.primaryUser = "wardxela";
  users.users.wardxela = {
    name = "wardxela";
    home = "/Users/wardxela";
  };

  programs.bash.interactiveShellInit = lib.mkBefore ''
    source ${pkgs.blesh}/share/blesh/ble.sh
  '';
}
