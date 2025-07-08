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
    git
    vim
    maim
    tesseract

    # Privacy
    gcr

    # TODO: Should be in the /shared/packages
    anytype # https://github.com/NixOS/nixpkgs/pull/411491
    ghostty # https://github.com/NixOS/nixpkgs/issues/404535#issuecomment-2853021600
    jan # lack of support
    exodus # lack of support
  ];
}
