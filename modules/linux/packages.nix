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
    zen-browser.packages."${system}".default
    rofi
    pwvucontrol
    blueman
    atlauncher
    obs-studio
    xcolor
    xclip
    zathura
    mpv

    # CLI
    vim
    maim
    tesseract
    unrar
    feh

    # Privacy
    gcr

    # TODO: Should be in the /shared/packages
    anytype # can't compile
    ghostty # marked as broken
    jan # lack of support
    exodus # lack of support
    legcord # lack of support
  ];
}
