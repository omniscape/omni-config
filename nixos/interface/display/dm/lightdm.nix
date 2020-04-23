{ config, pkgs }:

{

  services.xserver.displayManager.lightdm = {
    enable = true;
    autoLogin = {
      user = "kaos";
      enable = true;
    };
  };

}
