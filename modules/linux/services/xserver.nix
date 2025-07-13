{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 225;
    autoRepeatInterval = 30;
    xkb = {
      layout = "us,ru";
      options = "grp:caps_toggle";
    };
    windowManager.i3.enable = true;
    displayManager.startx = {
      enable = true;
      generateScript = true;
      extraCommands = ''
        xsetroot -solid '#000000'
      '';
    };
    excludePackages = with pkgs; [
      xterm
    ];
  };
  xdg.portal = {
    enable = true;
    configPackages = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
}
