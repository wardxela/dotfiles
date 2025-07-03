{
  inputs,
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    # GUI
    inputs.zen-browser.packages."${system}".default
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

    # Privacy
    gcr

    # TODO: Should be in the /shared/packages
    anytype # can't compile
    ghostty # marked as broken
    jan # lack of support
    exodus # lack of support
  ];
}
