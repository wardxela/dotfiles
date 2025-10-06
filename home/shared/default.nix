{ ... }:

{
  imports = [
    ./aichat.nix
    ./bash.nix
    ./bat.nix
    ./btop.nix
    ./eza.nix
    ./fastfetch.nix
    ./fd.nix
    ./fzf.nix
    ./git.nix
    ./gitui.nix
    ./gpg.nix
    ./kitty.nix
    ./lazydocker.nix
    ./nix-search-tv.nix
    ./nvf.nix
    ./oh-my-posh.nix
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

  programs.home-manager.enable = true;
}
