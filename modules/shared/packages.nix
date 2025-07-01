{ pkgs, ... }:

{
  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  environment.systemPackages = with pkgs; [
    # GUIs
    zed-editor
    google-chrome
    ayugram-desktop
    qbittorrent
    hoppscotch

    # Terminal
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
    weechat
    htop
    cointop

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

    # Other
    yt-dlp
    ffmpeg
    nix-search-tv
    nvd
  ];
}
