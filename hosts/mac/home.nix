{ ... }:

{
  imports = [
    ../../home/shared
    ../../home/darwin
  ];

  home.username = "wardxela";
  home.homeDirectory = "/Users/wardxela";

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;
}
