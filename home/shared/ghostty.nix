{ pkgs, ... }:

{
  programs.ghostty = {
    enable = true;
    package =
      # TODO: https://github.com/NixOS/nixpkgs/issues/388984
      if pkgs.stdenv.hostPlatform.isLinux then pkgs.ghostty else pkgs.nur.repos.DimitarNestorov.ghostty;
    settings = {
      font-feature = "-calt, -liga, -dlig";
      confirm-close-surface = false;
      macos-option-as-alt = true;
      maximize = true;
      window-decoration = "none";
    };
  };
}
