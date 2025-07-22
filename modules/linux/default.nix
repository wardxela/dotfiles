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

  security.rtkit.enable = true; # Enable RealtimeKit for audio purposes
}
