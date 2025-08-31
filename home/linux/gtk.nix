{ pkgs, ... }:

{
  home = {
    # gtk applications should use xdg specified settings
    sessionVariables = {
      GTK_USE_PORTAL = "1";
    };
  };
  gtk = {
    enable = true;
    iconTheme = {
      name = "Papirus";
      package = pkgs.papirus-icon-theme;
    };
    gtk3 = {
      extraConfig = {
        gtk-decoration-layout = "appmenu:none";
      };
    };
    gtk4 = {
      extraConfig = {
        gtk-decoration-layout = "appmenu:none";
      };
    };
  };
}
