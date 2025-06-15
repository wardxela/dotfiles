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
    exodus
    xcolor
    xclip
    lxappearance
    legcord

    # CLI
    vim
    maim
    tesseract
  ];
}
