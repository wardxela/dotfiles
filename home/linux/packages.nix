{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GUI
    pwvucontrol
    atlauncher
    xcolor
    xclip
    vial

    # CLI
    maim
    tesseract
    playerctl
    ffcast
    slop

    # TODO: Should be in the /shared/packages
    anytype # https://github.com/NixOS/nixpkgs/pull/411491
    exodus
  ];
}
