{ ... }:

{
  programs.chromium = {
    enable = true;
    extensions = [
      # uBlock Origin Lite
      { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; }
      # Unhook - Remove YouTube Recommended & Shorts
      { id = "khncfooichmfjbepaaaebmommgaepoid"; }
      # SponsorBlock for YouTube - Skip Sponsorships
      { id = "mnjggcdmjocbbbhaepdhchncahnbgone"; }
      # Refined GitHub
      { id = "hlepfoohegkhhmjieoechaddaejaokhf"; }
      # Yang! - Yet Another Bangs anywhere extension
      { id = "ecboojkidbdghfhifefbpdkdollfhicb"; }
      # Return YouTube Dislike
      { id = "gebbhagfogifgggkldgodflihgfeippi"; }
    ];
  };
}
