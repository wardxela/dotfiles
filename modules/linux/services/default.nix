{ ... }:

{
  imports = [
    ./picom.nix
    ./pipewire.nix
    ./xserver.nix
  ];

  services = {
    clipmenu.enable = true;
    displayManager.defaultSession = "none+i3";
    openssh.enable = true;
  };
}
