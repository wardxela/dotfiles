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
          main-elevated = "0D1117";
          highlight = "1F232A";
          highlight-elevated = "15191F";
          sidebar = "010409";
          player = "010409";
          card = "010409"; # What this color does?
          shadow = "0D1117";
          selected-row = "F0F6FC";
          button = "4493F8";
          button-active = "4493F8";
          button-disabled = "212830";
          tab-active = "010409";
          notification = "4493F8";
          notification-error = "F85149";
          misc = "010409"; # What this color does?
        };
        enabledExtensions = with spicePkgs.extensions; [
          adblockify
          shuffle
          keyboardShortcut
        ];
      };
  };
}
