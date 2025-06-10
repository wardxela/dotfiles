{ pkgs, lib, ... }:

{
  programs.ghostty = {
    enable = true;
    package =
      if pkgs.stdenv.hostPlatform.isLinux then pkgs.ghostty else pkgs.nur.repos.DimitarNestorov.ghostty;
    settings = {
      theme = "GitHub-Dark-Default";
      font-family = "JetBrainsMono Nerd Font";
      font-size = 14;
      font-feature = "-calt, -liga, -dlig";
      confirm-close-surface = false;
      macos-option-as-alt = true;
      maximize = true;
      window-decoration = "none";
    };
  };
}
