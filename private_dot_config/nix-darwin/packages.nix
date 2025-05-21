{ pkgs, ... }:

{
  nixpkgs = {
    hostPlatform = "aarch64-darwin";
    # TODO: allow unfree packages explicitly (not globally)
    config.allowUnfree = true;
  };

  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  environment.systemPackages = with pkgs; [
    # GUI
    nur.repos.natsukium.zen-browser
    nur.repos.DimitarNestorov.ghostty
    monitorcontrol
    iina
    keka
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
    chezmoi
    fastfetch
    zoxide
    eza
    yazi
    fzf
    ripgrep
    bat
    helix
    ncdu

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
    nixd
    nixfmt-rfc-style
    glab
    gitui
    colima
    docker
    lazydocker

    # Other
    yt-dlp
    ffmpeg
    nix-search-tv
  ];
}
