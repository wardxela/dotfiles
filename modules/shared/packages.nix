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
    nix-your-shell

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
    gitui
    lazydocker

    # Scripts
    ns-script
  ];
}
