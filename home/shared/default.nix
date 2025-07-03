{ ... }:

{
  imports = [
    ./chromium.nix
    ./ghostty.nix
    ./git.nix
    ./gitui.nix
    ./helix.nix
    ./spicetify.nix
    ./zed-editor.nix
  ];

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
