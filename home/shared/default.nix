{ ... }:

{
  imports = [
    ./bat.nix
    ./btop.nix
    ./chromium.nix
    ./eza.nix
    ./fish.nix
    ./fzf.nix
    ./ghostty.nix
    ./git.nix
    ./gitui.nix
    ./helix.nix
    ./nix-your-shell.nix
    ./spicetify.nix
    ./yazi.nix
    ./zed-editor.nix
    ./zoxide.nix
  ];

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
  home.shell.enableFishIntegration = true;
}
