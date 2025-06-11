{ pkgs, ... }:

{
  imports = [
    ../../home/shared
  ];

  home.username = "wardxela";
  home.homeDirectory = "/home/wardxela";

  home.stateVersion = "25.05";

  programs.home-manager.enable = true;

  xsession.windowManager.i3 =
    let
      mod = "Mod1";
    in
    {
      enable = true;
      config = {
        modifier = mod;
        keybindings = {
          "${mod}+space" = "exec --no-startup-id rofi -show drun";
          "${mod}+Return" = "exec ghostty";
          "${mod}+Shift+q" = "kill";

          "${mod}+h" = "focus left";
          "${mod}+j" = "focus down";
          "${mod}+k" = "focus up";
          "${mod}+l" = "focus right";

          "${mod}+Shift+h" = "move left";
          "${mod}+Shift+j" = "move down";
          "${mod}+Shift+k" = "move up";
          "${mod}+Shift+l" = "move right";

          "${mod}+1" = "workspace number 1";
          "${mod}+2" = "workspace number 2";
          "${mod}+3" = "workspace number 3";
          "${mod}+4" = "workspace number 4";
          "${mod}+5" = "workspace number 5";
          "${mod}+6" = "workspace number 6";
          "${mod}+7" = "workspace number 7";
          "${mod}+8" = "workspace number 8";
          "${mod}+9" = "workspace number 9";
          "${mod}+0" = "workspace number 10";

          "${mod}+Shift+1" = "move container to workspace number 1";
          "${mod}+Shift+2" = "move container to workspace number 2";
          "${mod}+Shift+3" = "move container to workspace number 3";
          "${mod}+Shift+4" = "move container to workspace number 4";
          "${mod}+Shift+5" = "move container to workspace number 5";
          "${mod}+Shift+6" = "move container to workspace number 6";
          "${mod}+Shift+7" = "move container to workspace number 7";
          "${mod}+Shift+8" = "move container to workspace number 8";
          "${mod}+Shift+9" = "move container to workspace number 9";
          "${mod}+Shift+0" = "move container to workspace number 10";

          "${mod}+Shift+Tab" = "move workspace to output next";
        };
        window = {
          hideEdgeBorders = "both";
          titlebar = false;
        };
        bars = [
          {
            mode = "invisible";
          }
        ];
      };
    };

  programs.rofi = {
    enable = true;
    font = "JetBrainsMono Nerd Font";
    terminal = "${pkgs.ghostty}/bin/ghostty";
    theme = "Arc-Dark";
    extraConfig = {
      kb-row-up = "Up,Control+k";
      kb-row-down = "Down,Control+j";
      kb-accept-entry = "Return";
      kb-remove-to-eol = "Control+Shift+e";
    };
  };

  programs.zen-browser = {
    enable = true;
    policies = {
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      OfferToSaveLogins = false;
    };
  };
}
