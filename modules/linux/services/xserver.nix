{ ... }:

{
  services.xserver = {
    enable = true;
    autoRepeatDelay = 250;
    autoRepeatInterval = 60;
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
  };
}
