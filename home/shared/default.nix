{ ... }:

{
  imports = [
    ./aichat.nix
    ./bat.nix
    ./btop.nix
    ./eza.nix
    ./fastfetch.nix
    ./fd.nix
    ./fish.nix
    ./fzf.nix
    ./git.nix
    ./gitui.nix
    ./gpg.nix
    ./kitty.nix
    ./lazydocker.nix
    ./nix-your-shell.nix
    ./nvf.nix
    ./packages.nix
    ./ripgrep.nix
    ./television.nix
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
