{
  pkgs,
  zen-browser,
  apple-fonts,
  ...
}:

{
  fonts.packages = [
    apple-fonts.packages.${pkgs.system}.sf-pro
  ];

  environment.systemPackages = with pkgs; [
    # GUI
    anytype
    ghostty
    rofi
    pwvucontrol
    blueman
    atlauncher
    obs-studio
    zen-browser.packages."${system}".default
    jan
    exodus
    xcolor
    xclip
    legcord
    zathura

    # CLI
    vim
    maim
    tesseract
    unrar
    feh

    # Other
    gcr
  ];
}
