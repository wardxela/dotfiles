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
    zed-editor
    hoppscotch
    google-chrome
    qbittorrent
    raycast
    katawa-shoujo-re-engineered

    # Terminal
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

    # Privacy
    gnupg
    gopass
    gopass-jsonapi

    # Compilers/Interpreters/Runtimes/etc.
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
  ];
}
