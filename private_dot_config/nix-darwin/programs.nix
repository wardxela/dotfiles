{ pkgs, spicetify-nix, ... }:

{
  imports = [
    spicetify-nix.darwinModules.spicetify
  ];

  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
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
          text = "FFFFFF";
          subtext = "F1F1F1";
          main = "000000";
          sidebar = "000000";
          player = "000000";
          card = "00010A";
          shadow = "000000";
          selected-row = "F1F1F1";
          button = "545955";
          button-active = "F1F1F1";
          button-disabled = "434C5E";
          tab-active = "000000";
          notification = "00010A";
          notification-error = "000000";
          misc = "00010A";
        };
        enabledExtensions = with spicePkgs.extensions; [
          adblockify
          hidePodcasts
          shuffle
        ];
      };
  };
}
