{ pkgs, ... }:

{
  imports = [
    ../shared
    ./environment.nix
    ./programs.nix
    ./services
  ];

  system.stateVersion = "24.11";

  users.users.wardxela = {
    isNormalUser = true;
    description = "Alexander";
    extraGroups = [
      "networkmanager"
      "wheel"
      "adbusers"
    ];
    shell = pkgs.fish;
  };

  virtualisation.docker = {
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  xdg.portal = {
    enable = true;
    config.sway = {
      default = [ "gtk" ];
      "org.freedesktop.impl.portal.Screenshot" = "wlr";
      "org.freedesktop.impl.portal.ScreenCast" = "wlr";
    };
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-wlr
    ];
    xdgOpenUsePortal = true;
  };

  security.polkit.enable = true;
  security.rtkit.enable = true; # Enable RealtimeKit for audio purposes
}
