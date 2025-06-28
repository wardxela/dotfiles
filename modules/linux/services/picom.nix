{ ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    settings = {
      blur = {
        method = "dual_kawase";
        size = 44;
      };
      blur-background-exclude = [
        "class_g = 'slop'"
      ];
    };
  };
}
