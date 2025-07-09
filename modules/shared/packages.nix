{ pkgs, ... }:

let
  ns-script = pkgs.writeShellScriptBin "ns" (builtins.readFile ./../../scripts/nixpkgs.sh);
  tmx-script = pkgs.writeShellScriptBin "tmx" (builtins.readFile ./../../scripts/tmx.sh);
in
{
  environment.systemPackages = with pkgs; [
    # GUI
    ayugram-desktop
    qbittorrent
    hoppscotch
    discord

    # CLI
    aichat
    fastfetch
    inxi
    fzf
    ripgrep
    ncdu
    mprocs
    just
    dust
    pinentry-tty
    tabiew
    speedread
    ggh
    cointop
    yt-dlp
    ffmpeg
    nix-search-tv
    nvd
    tmate

    # Archiving and compression
    zip
    unzip
    unrar

    # Privacy
    gopass
    gopass-jsonapi

    # Compilers/Interpreters/Runtimes/etc.
    bun
    fnm
    rustup

    # Development Tools
    nil
    nixfmt-rfc-style
    glab
    lazydocker

    # Scripts
    ns-script
    tmx-script
  ];
}
