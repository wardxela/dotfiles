{ ... }:

{
  system.defaults = {
    dock = {
      autohide = true;
      mru-spaces = false;
      persistent-apps = [
        "/Applications/Zen Browser.app"
        "/Applications/Zed.app"
        "/Applications/Ghostty.app"
        "/Applications/Legcord.app"
        "/Applications/ChatGPT.app"
      ];
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
