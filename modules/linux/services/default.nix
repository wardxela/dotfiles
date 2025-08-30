{ pkgs, ... }:

{
  imports = [
    ./gnome.nix
    ./openssh.nix
    ./pipewire.nix
    ./wayland.nix
  ];

  services = {
    solaar.enable = true;
    udev.packages = with pkgs; [ vial ];
  };
}
