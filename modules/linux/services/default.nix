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
    gnome.gcr-ssh-agent.enable = false;
    solaar.enable = true;
  };
}
