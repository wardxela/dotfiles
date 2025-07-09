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
    ./nix-your-shell.nix
    ./nixvim.nix
    ./spicetify.nix
    ./tmux.nix
    ./yazi.nix
    ./zed-editor.nix
    ./zoxide.nix
  ];

  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
  home.shell.enableFishIntegration = true;
}
