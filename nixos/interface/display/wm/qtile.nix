{ config, pkgs }:

{

  services.xserver.windowManager.qtile = {
    enable = true;
  };

  environment.systemPackages = [
    pkgs.qtile
  ];
}
