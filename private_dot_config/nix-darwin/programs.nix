{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.fish
    pkgs.chezmoi
    pkgs.fastfetch
    pkgs.zoxide
    pkgs.eza
    pkgs.yazi
    pkgs.fzf
    pkgs.bat
    pkgs.gitui
    pkgs.glab
    pkgs.colima
    pkgs.docker
    pkgs.lazydocker
    pkgs.bun
    pkgs.rustup
    pkgs.nil
    pkgs.nixd
    pkgs.nixfmt-rfc-style
  ];

  fonts.packages = [
    pkgs.nerd-fonts.jetbrains-mono
  ];

  programs.fish.enable = true;
}
