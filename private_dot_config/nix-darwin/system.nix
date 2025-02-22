{ ... }:

{
  system.defaults = {
    dock = {
      autohide = true;
      minimize-to-application = true;
      mru-spaces = false;
      persistent-apps = [
        "/Applications/Zen Browser.app"
        "/Applications/Zed.app"
        "/Applications/Ghostty.app"
        "/Applications/Legcord.app"
        "/Applications/ChatGPT.app"
      ];
      show-recents = false;
      showhidden = true;
      tilesize = 40;
    };

    finder = {
      _FXSortFoldersFirst = true;
      FXPreferredViewStyle = "clmv";
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      CreateDesktop = false;
      FXDefaultSearchScope = "SCcf";
      FXRemoveOldTrashItems = true;
      NewWindowTarget = "Home";
      QuitMenuItem = true;
      ShowExternalHardDrivesOnDesktop = false;
      ShowHardDrivesOnDesktop = false;
      ShowMountedServersOnDesktop = false;
      ShowRemovableMediaOnDesktop = false;
    };

    hitoolbox.AppleFnUsageType = "Do Nothing";

    NSGlobalDomain = {
      _HIHideMenuBar = true;
      AppleFontSmoothing = 0;
      AppleInterfaceStyle = "Dark";
    };

    screencapture = {
      include-date = true;
      target = "clipboard";
    };

    WindowManager = {
      EnableTiledWindowMargins = false;
    };

    CustomUserPreferences = {
      "com.apple.symbolichotkeys" = {
        AppleSymbolicHotKeys = {
          "64" = {
            enabled = false;
            value = {
              parameters = [ ];
              type = "standard";
            };
          };
        };
      };
    };
  };
}
