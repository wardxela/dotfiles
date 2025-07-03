{ ... }:

{
  imports = [
    ./bat.nix
    ./btop.nix
    ./chromium.nix
    ./ghostty.nix
    ./git.nix
    ./gitui.nix
    ./helix.nix
    ./spicetify.nix
    ./yazi.nix
    ./zed-editor.nix
    ./zellij.nix
  ];

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
