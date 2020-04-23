{ config, pkgs, ... }:

{

  imports =
    [ # TODO: machine-specific imports
      ./machines/lib15/boot.nix
      ./machines/lib15/hardware.nix
      ./machines/lib15/network.nix
#      ./machines/lib15/scan.nix
#      ./machines/lib15/security.nix
      ./machines/lib15/hardware-config.nix
      ./machines/lib15/services.nix
      ./machines/lib15/system.nix
    ];
}
