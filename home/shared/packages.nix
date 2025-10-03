{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GUI
    telegram-desktop
    qbittorrent
    hoppscotch
    discord
    slack

    # CLI
    inxi
    ncdu
    duf
    mprocs
    just
    dust
    tabiew
    glow
    speedread
    ggh
    cointop
    ffmpeg
    nvd
    termusic
    glab

    # Archiving and compression
    zip
    unzip
    unrar

    # Privacy
    gopass
    gopass-jsonapi

    # Development Tools
    devenv
    gcc
    nodejs
    nixfmt
    tree-sitter
    nil
    vscode-langservers-extracted
    tailwindcss-language-server
  ];
}
