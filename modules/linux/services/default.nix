{ ... }:

{
  imports = [
    ./openssh.nix
    ./picom.nix
    ./pipewire.nix
    ./xserver.nix
  ];

  services = {
    clipmenu.enable = true;
    displayManager.defaultSession = "none+i3";
    gnome.gnome-keyring.enable = true;
    solaar.enable = true;
  };
}
