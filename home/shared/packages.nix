{ pkgs, ... }:

let
  ns-script = pkgs.writeShellScriptBin "ns" (builtins.readFile ./scripts/nixpkgs.sh);
  tmx-script = pkgs.writeShellScriptBin "tmx" (builtins.readFile ./scripts/tmx.sh);
in
{
  home.packages = with pkgs; [
    # GUI
    ayugram-desktop
    qbittorrent
    hoppscotch
    discord

    # CLI
    inxi
    ncdu
    mprocs
    just
    dust
    tabiew
    glow
    nom
    speedread
    ggh
    cointop
    ffmpeg
    nix-search-tv
    nvd
    termusic

    # Archiving and compression
    zip
    unzip
    unrar

    # Privacy
    gopass
    gopass-jsonapi

    # Development Tools
    nil
    nixfmt
    glab

    # Scripts
    ns-script
    tmx-script
  ];
}
