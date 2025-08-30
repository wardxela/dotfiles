{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GUI
    pwvucontrol
    atlauncher
    vial

    # CLI
    tesseract
    playerctl
    ffcast
    slop

    # TODO: Should be in the /shared/packages
    anytype # https://github.com/NixOS/nixpkgs/pull/411491
    exodus
  ];
}
