{ ... }:

{
  imports = [
    ./ghostty.nix
    ./git.nix
    ./gitui.nix
    ./helix.nix
    ./zed-editor.nix
  ];

  home.username = "wardxela";

  programs.home-manager.enable = true;
}
