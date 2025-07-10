{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI
    # TODO: https://github.com/NixOS/nixpkgs/issues/401074
    # amnezia-vpn
    monitorcontrol
    iina
    keka

    # Development Tools
    colima
    docker

    # Privacy
    gnupg
  ];
}
