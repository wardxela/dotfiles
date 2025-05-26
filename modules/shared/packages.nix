{ pkgs, ... }:

{
  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  environment.systemPackages = with pkgs; [
    # GUI
    nur.repos.natsukium.zen-browser
    zed-editor
    hoppscotch
    google-chrome
    qbittorrent
    katawa-shoujo-re-engineered
    # TODO: ld: symbol(s) not found for architecture x86_64
    # amnezia-vpn

    # Terminal
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
