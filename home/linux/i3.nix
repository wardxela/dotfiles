{ ... }:

{
  xsession.windowManager.i3 =
    let
      mod = "Mod1";
      super = "Mod4";
      mainDesktop = "DP-0";
      secondDesktop = "HDMI-1";
    in
    {
      enable = true;
      config = {
        modifier = mod;
        window = {
          hideEdgeBorders = "both";
          titlebar = false;
          border = 0;
        };
        floating = {
          titlebar = false;
          border = 0;
        };
        bars = [
          {
            mode = "invisible";
          }
        ];
        keybindings = {
          "${mod}+space" = "exec --no-startup-id rofi -show drun";
          "${mod}+Return" = "exec ghostty";
          "${super}+q" = "kill";

          "${super}+Shift+s" = "exec --no-startup-id maim --select | xclip -selection clipboard -t image/png";

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
        workspaceOutputAssign = [
          {
            output = secondDesktop;
            workspace = "1";
          }
          {
            output = mainDesktop;
            workspace = "2";
          }
          {
            output = mainDesktop;
            workspace = "3";
          }
          {
            output = mainDesktop;
            workspace = "4";
          }
          {
            output = mainDesktop;
            workspace = "5";
          }
          {
            output = mainDesktop;
            workspace = "6";
          }
          {
            output = mainDesktop;
            workspace = "7";
          }
          {
            output = mainDesktop;
            workspace = "8";
          }
          {
            output = mainDesktop;
            workspace = "9";
          }
          {
            output = mainDesktop;
            workspace = "10";
          }
        ];
        assigns = {
          "number 1" = [ { class = "^zen$"; } ];
          "number 2" = [ { class = "^dev.zed.Zed$"; } ];
          "number 3" = [ { class = "^com.mitchellh.ghostty$"; } ];
        };
      };
    };
}
