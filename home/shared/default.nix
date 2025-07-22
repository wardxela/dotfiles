{ ... }:

{
  imports = [
    ./aichat.nix
    ./bat.nix
    ./btop.nix
    ./chromium.nix
    ./eza.nix
    ./lazydocker.nix
    ./fastfetch.nix
    ./fish.nix
    ./fzf.nix
    ./ghostty.nix
    ./git.nix
    ./gitui.nix
    ./gpg.nix
    ./nix-your-shell.nix
    ./nixvim.nix
    ./packages.nix
    ./ripgrep.nix
    ./tmux.nix
    ./yazi.nix
    ./yt-dlp.nix
    ./zed-editor.nix
    ./zoxide.nix
  ];

  home.stateVersion = "25.05";
  home.shell.enableFishIntegration = true;

  programs.home-manager.enable = true;
}
