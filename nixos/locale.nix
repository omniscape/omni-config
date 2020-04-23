{ config, pkgs, ... }:

{

  imports =
    [
      ./timezone/london.nix
    ];

  # Select internationalisation properties.
  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "us";
    defaultLocale = "en_GB.UTF-8";
  };

}
