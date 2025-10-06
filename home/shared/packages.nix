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
    nixfmt
    nil
  ];
}
