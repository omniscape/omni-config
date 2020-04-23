{ config, pkgs, lib, ... }:

{
  services.xserver.displayManager.sddm = {
    enable = true;
  };
}
