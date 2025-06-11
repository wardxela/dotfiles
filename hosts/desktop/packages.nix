{
  pkgs,
  zen-browser,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # GUI
    ghostty
    rofi
    pavucontrol
    blueman
    atlauncher
    obs-studio
    zen-browser.packages."${system}".default
    jan

    lxappearance

    # Terminal
    vim
  ];
}
