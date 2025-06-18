{ pkgs, ... }:

{
  home = {
    packages = [
      pkgs.dconf
      pkgs.glib # gsettings
    ];
    # gtk applications should use xdg specified settings
    sessionVariables = {
      GTK_USE_PORTAL = "1";
    };
  };
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };
  gtk = {
    enable = true;
    theme = {
      name = "Fluent";
      package = pkgs.fluent-gtk-theme;
    };
    gtk3 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
        gtk-decoration-layout = "appmenu:none";
      };
    };
    gtk4 = {
      extraConfig = {
        gtk-application-prefer-dark-theme = true;
        gtk-decoration-layout = "appmenu:none";
      };
      # Ghostty border fix
      extraCss = ''
        window {
          padding: 0;
        }
      '';
    };
  };
}
