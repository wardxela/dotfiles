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
    ./fd.nix
    ./fish.nix
    ./fzf.nix
    ./ghostty.nix
    ./git.nix
    ./gitui.nix
    ./gpg.nix
    ./nix-your-shell.nix
    ./nvf.nix
    ./packages.nix
    ./ripgrep.nix
    ./thunderbird.nix
    ./tmux.nix
    ./yazi.nix
    ./yt-dlp.nix
    ./zed-editor.nix
    ./zen-browser.nix
    ./zoxide.nix
  ];

  home.stateVersion = "25.05";
  home.shell.enableFishIntegration = true;

  programs.home-manager.enable = true;
}
