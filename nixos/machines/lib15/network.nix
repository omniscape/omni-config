{ config, pkgs, ... }:

{

  networking = {

    hostName = "N1";

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
    interfaces.wlp2s0.useDHCP = true;
    interfaces.enp3s0f2.useDHCP = true;

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

}
