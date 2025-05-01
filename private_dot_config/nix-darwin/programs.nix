{ pkgs, spicetify-nix, ... }:

{
  imports = [
    spicetify-nix.darwinModules.spicetify
  ];

  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
        eval "$(/opt/homebrew/bin/brew shellenv)"
        set -x EDITOR vim
        set -g fish_greeting
        zoxide init fish | source
        fnm env --use-on-cd --shell fish | source
      '';
      shellAliases = {
        zed = "zeditor";
      };
    };

    tmux = {
      enable = true;
      enableVim = true;
    };

    spicetify =
      let
        spicePkgs = spicetify-nix.legacyPackages.${pkgs.stdenv.system};
      in
      {
        enable = true;
        colorScheme = "custom";
        customColorScheme = {
          text = "F0F6FC";
          subtext = "F0F6FC";
          main = "0D1117";
          highlight = "656c7633";
          sidebar = "0D1117";
          player = "0D1117";
          card = "010409";
          shadow = "0D1117";
          selected-row = "F0F6FC";
          button = "4493f8";
          button-active = "F0F6FC";
          button-disabled = "212830";
          tab-active = "010409";
          notification = "010409";
          notification-error = "010409";
          misc = "010409";
        };
        enabledExtensions = with spicePkgs.extensions; [
          adblockify
          hidePodcasts
          shuffle
        ];
      };
  };
}
