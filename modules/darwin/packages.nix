{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI
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
