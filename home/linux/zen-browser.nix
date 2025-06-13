{ ... }:

{
  programs.zen-browser = {
    enable = true;
    policies = {
      AutofillCreditCardEnabled = false;
      DisableAppUpdate = true;
      DisableFeedbackCommands = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      OfferToSaveLogins = false;
    };
  };
}
