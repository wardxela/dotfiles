{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI
    nur.repos.DimitarNestorov.ghostty
    monitorcontrol
    iina
    keka

    # Development Tools
    colima
    docker
  ];
}
