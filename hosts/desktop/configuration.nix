{ config, pkgs, ... }:

{
  imports = [
    ../../modules/shared
    ../../modules/linux
    ./hardware-configuration.nix
    ./packages.nix
  ];

  nixpkgs.config.allowUnfree = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Europe/Moscow";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

  services = {
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
      videoDrivers = [ "nvidia" ];
    };
    displayManager.defaultSession = "none+i3";
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
    gnome.gnome-keyring.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      # Uncomment the following line if you want to use JACK applications
      # jack.enable = true;
    };
    ssh-agent.enable = true;
    clipmenu.enable = true;
  };

  hardware = {
    graphics.enable = true;
    nvidia = {
      modesetting.enable = true;
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
      open = false;
    };
    bluetooth = {
      enable = true;
      powerOnBoot = true;
    };
  };

  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 4 * 1024;
    }
  ];

  programs.amnezia-vpn.enable = true;
  programs.nix-ld.enable = true;

  security.rtkit.enable = true; # Enable RealtimeKit for audio purposes

  virtualisation.docker = {
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  users.users.wardxela = {
    isNormalUser = true;
    description = "Alexander";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
    shell = pkgs.fish;
  };

  system.stateVersion = "24.11";
}
