{ ... }:

{
  services = {
    clipmenu.enable = true;
    displayManager.defaultSession = "none+i3";
    gnome.gnome-keyring.enable = true;
    picom = {
      enable = true;
      backend = "glx";
      settings = {
        blur = {
          method = "dual_kawase";
          size = 44;
        };
        blur-background-exclude = [
          "class_g = 'slop'"
        ];
      };
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # Uncomment the following line if you want to use JACK applications
      # jack.enable = true;
    };
    xserver = {
      enable = true;
      autoRepeatDelay = 250;
      autoRepeatInterval = 60;
      xkb = {
        layout = "us,ru";
        options = "grp:caps_toggle";
      };
      desktopManager.xterm.enable = false;
      windowManager.i3.enable = true;
      displayManager = {
        lightdm.enable = true;
      };
    };
  };
}
