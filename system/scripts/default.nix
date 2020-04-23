{ config, pkgs, ... }:

{

  imports =
    [ # Scripts
      ./helloWorld.nix
      ./reloadUI.nix
      ./switchColors.nix
    ];
}
