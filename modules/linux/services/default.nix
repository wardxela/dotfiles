{ pkgs, ... }:

{
  imports = [
    ./openssh.nix
    ./pipewire.nix
    ./xserver.nix
  ];

  services = {
    clipmenu.enable = true;
    gnome.gnome-keyring.enable = true;
    gnome.gcr-ssh-agent.enable = false;
    solaar.enable = true;
    udev.packages = with pkgs; [ vial ];
  };
}
