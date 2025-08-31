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
    configPackages = with pkgs; [
      xdg-desktop-portal-wlr
    ];
  };

  security.polkit.enable = true;
  security.rtkit.enable = true; # Enable RealtimeKit for audio purposes
}
