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
    steam-run
    obs-studio
    zen-browser.packages."${system}".default

    lxappearance

    # Terminal
    vim
  ];
}
