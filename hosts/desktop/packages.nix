{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI
    firefox
    ghostty
    rofi
    pavucontrol
    blueman
    atlauncher
    steam-run

    lxappearance

    # Terminal
    vim
  ];
}
