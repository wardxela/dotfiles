{ pkgs, ... }:

{
  imports = [
    ../../home/shared
    ../../home/linux
  ];

  home.username = "wardxela";
  home.homeDirectory = "/home/wardxela";

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
