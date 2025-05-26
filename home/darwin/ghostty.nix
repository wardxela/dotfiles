{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package = pkgs.nur.repos.DimitarNestorov.ghostty;
    settings = {
      theme = "GitHub-Dark-Default";
      font-family = "JetBrainsMono Nerd Font";
      font-size = 16;
      font-feature = "-calt, -liga, -dlig";
      confirm-close-surface = false;
      macos-option-as-alt = true;
      maximize = true;
    };
  };
}
