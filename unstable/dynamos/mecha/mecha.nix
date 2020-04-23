{ config, lib, pkgs, ... }:

{

  imports = [
    ../nodes
  ];

  # TODO: add shared hardware config

    hardware = {

      cpu.intel.updateMicrocode = false;

      opengl = {
        enable = true;
        driSupport = true;
      };

      pulseaudio = {
        enable = true;
        package = pkgs.pulseaudio;
      };

  #    bluetooth = {
  #      enable = false;
  #      package = pkgs.bluezFull;
  #      powerOnBoot = false;
  #    };

  #    acpilight.enable = true;
  #    brillo.enable = true;
  #    illum.enable = true;
  #    ledger.enable = true;
    };

    networking = {
      networkmanager = {
        enable = true;
        wifi = {
          macAddress = "random";
  #        powersave = true;
        };
      };

      usePredictableInterfaceNames = true; # TODO Research usage.

      firewall = {
        enable = true;
        allowPing = false;
        allowedTCPPorts = [ 80 443 ];
    #      allowedUDPPorts = [ ... ];
        checkReversePath = true;
      };

      useDHCP = false;
      interfaces.wlp1s0.useDHCP = true;

      tcpcrypt.enable = true;

  #   proxy = {
  #     default = "http://user:password@proxy:port/";
  #     noProxy = "127.0.0.1,localhost,internal.domain";
  #   };

  #    wireguard = {
  #      enable = true;
  #    };

  #    mullvad VPN
  #   DNS Leaks https://am.i.mullvad.net/

  #   I2P && TOR
  #   services = {
  #     i2p.enable = true;
  #     i2pd = {};
  #    };
    };
    };
}
