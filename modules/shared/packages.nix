{ pkgs, ... }:

let
  ns-script = pkgs.writeShellScriptBin "ns" (builtins.readFile ./../../scripts/nixpkgs.sh);
in
{
  environment.systemPackages = with pkgs; [
    # GUI
    zed-editor
    google-chrome
    ayugram-desktop
    qbittorrent
    hoppscotch
    discord

    # CLI
    git
    fishPlugins.tide
    fishPlugins.plugin-sudope
    fastfetch
    inxi
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
    pinentry-tty
    tabiew
    speedread
    ggh
    btop
    cointop
    yt-dlp
    ffmpeg
    nix-search-tv
    nvd

    # Privacy
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
    lazydocker

    # Scripts
    ns-script
  ];
}
