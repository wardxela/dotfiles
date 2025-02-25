{ pkgs, ... }:

{
  environment.systemPackages = [
    pkgs.gnupg
    pkgs.gopass
    pkgs.gopass-jsonapi
    pkgs.chezmoi
    pkgs.fish
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

  programs.fish.enable = true;
}
