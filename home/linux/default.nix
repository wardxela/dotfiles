{ ... }:

{
  imports = [
    ../shared
    ./dunst.nix
    ./easyeffects.nix
    ./gtk.nix
    ./mpv.nix
    ./obs.nix
    ./packages.nix
    ./rofi.nix
    ./sway.nix
    ./zathura.nix
  ];
  services.clipmenu.enable = true;
}
