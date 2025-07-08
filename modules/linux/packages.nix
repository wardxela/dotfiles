{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # GUI
    pwvucontrol
    blueman
    atlauncher
    obs-studio
    xcolor
    xclip
    mpv

    # CLI
    vim
    maim
    tesseract

    # Privacy
    gcr

    # TODO: Should be in the /shared/packages
    anytype # https://github.com/NixOS/nixpkgs/pull/411491
    jan # lack of support
    exodus # lack of support
  ];
}
