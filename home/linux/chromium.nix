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
      # Copy Current URL
      { id = "okkmnbabeggdmakmnffkoflpdlkmmpcp"; }
      # Wappalyzer - Technology profiler
      { id = "gppongmhjkpfnbhagpmjfkannfbllamg"; }
      # Gopass Bridge
      { id = "kkhfnlkhiapbiehimabddjbimfaijdhk"; }
      # AI Grammar Checker & Paraphraser – LanguageTool
      { id = "oldceeleldhonbafppcapldpdifcinji"; }
      # Simple Translate
      { id = "ibplnjkanclpjokhdolnendpplpjiace"; }
      # unsight
      { id = "dnkemphgofcdnnfjblcpclofbkeimpnc"; }
      # Decentraleyes
      { id = "ldpochfccmkkmhdbclfhpagapcfdljkj"; }
      # Privacy Badger
      { id = "pkehgijcmpdhfbdbbnkijodmdjhbjlgp"; }
    ];
  };
}
