{ ... }:

{
  gtk = {
    enable = true;
    gtk4 = {
      # See https://www.reddit.com/r/awesomewm/comments/u3237d/comment/i8p75c9/
      extraCss = ''
        .background {
            margin: 0;
            padding: 0;
            box-shadow: 0 0 0 0;
        }
      '';
    };
  };
}
