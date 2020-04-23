{ config, pkgs, ... }:

{

  services = {
    kbfs = {
      enable = true;
      mountPoint = "%h/keybase";
    };
    keybase.enable = true;
  };

}
