{ ... }:

{
  homebrew = {
    enable = true;
    brews = [
      "git"
      "encore"
      "mingw-w64"
    ];
    casks = [
      # TODO: https://github.com/NixOS/nixpkgs/issues/388984
      "ghostty"
    ];
  };
}
