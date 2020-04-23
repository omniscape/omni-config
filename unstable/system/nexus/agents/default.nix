{ config, pkgs, ... }:

{

  imports = [
    ./casey.nix
    ./kyle.nix
  ];

  users.groups = {
    kcw = {
      name = "kcw";
      members = [ "casey" "kyle" ];
    };
  };

  users.mutableUsers = true;

  security.sudo.wheelNeedsPassword = false;

}
