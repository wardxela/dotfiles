{ self, pkgs, ... }:

{
  nix = {
    settings.experimental-features = [
      "nix-command"
      "flakes"
    ];
  };
  system = {
    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    stateVersion = 5;

    # Set Git commit hash for darwin-version.
    configurationRevision = self.rev or self.dirtyRev or null;

    defaults = {
      dock = {
        autohide = true;
        expose-group-apps = true;
        minimize-to-application = true;
        mru-spaces = false;
        persistent-apps = [
          "/Applications/Zen Browser.app"
          "${pkgs.zed-editor}/Applications/Zed.app"
          "/Applications/Ghostty.app"
          "/Applications/Legcord.app"
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
        NewWindowTarget = "Other";
        NewWindowTargetPath = "file:///Users/wardxela/Downloads";
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
        NSAutomaticWindowAnimationsEnabled = false;
      };

      screencapture = {
        include-date = true;
        target = "file";
        location = "~/Pictures/Screenshots";
      };

      spaces.spans-displays = false;

      WindowManager = {
        EnableTiledWindowMargins = false;
        EnableTilingByEdgeDrag = false;
        EnableTilingOptionAccelerator = false;
        EnableTopTilingByEdgeDrag = false;
      };
    };
  };
  time.timeZone = "Europe/Moscow";
}
