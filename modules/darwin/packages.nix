{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI
    nur.repos.natsukium.zen-browser
    nur.repos.DimitarNestorov.ghostty
    monitorcontrol
    iina
    keka

    # Development Tools
    colima
  ];
}
