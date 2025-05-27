{ pkgs, ... }:

{
  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  environment.systemPackages = with pkgs; [
    # GUIs
    zed-editor
    hoppscotch
    google-chrome
    qbittorrent
    katawa-shoujo-re-engineered

    # Terminal
    pinentry-tty
    git
    fishPlugins.tide
    fastfetch
    zoxide
    eza
    yazi
    fzf
    ripgrep
    bat
    helix
    ncdu
    mprocs
    just
    dust
    zellij

    # Privacy
    gnupg
    gopass
    gopass-jsonapi

    # Compilers/Interpreters/Runtimes/etc.
    gnumake
    clang
    bun
    fnm
    rustup
    php
    php84Packages.composer

    # Development Tools
    nil
    nixfmt-rfc-style
    glab
    gitui
    docker
    lazydocker

    # Other
    yt-dlp
    ffmpeg
    nix-search-tv
  ];
}
