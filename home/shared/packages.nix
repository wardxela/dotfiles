{ pkgs, ... }:

let
  ns-script = pkgs.writeShellScriptBin "ns" (builtins.readFile ./scripts/nixpkgs.sh);
  tmx-script = pkgs.writeShellScriptBin "tmx" (builtins.readFile ./scripts/tmx.sh);
in
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
    jellyfin-tui
    glab

    # Archiving and compression
    zip
    unzip
    unrar

    # Privacy
    gopass
    gopass-jsonapi

    # Development Tools
    gcc
    nodejs
    nixfmt
    tree-sitter
    nil
    vscode-langservers-extracted
    tailwindcss-language-server

    # Scripts
    ns-script
    tmx-script
  ];
}
