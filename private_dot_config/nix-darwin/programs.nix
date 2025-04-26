{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI
    aerospace

    # Terminal
    fish
    chezmoi
    fastfetch
    zoxide
    eza
    yazi
    fzf
    ripgrep
    bat
    helix

    # Privacy
    gnupg
    gopass
    gopass-jsonapi

    # Compilers/Interpreters/Runtimes/etc.
    bun
    rustup
    php
    php84Packages.composer

    # Development Tools
    nil
    nixd
    nixfmt-rfc-style
    glab
    gitui
    colima
    docker
    lazydocker

    # Other
    yt-dlp
    ffmpeg
  ];

  programs.fish.enable = true;
}
