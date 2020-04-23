
{ config, pkgs, ... }:

{

  # Use the GRUB 2 boot loader.
  boot = {
    loader = {
      timeout = 4;
      grub = {
        enable = true;
        version = 2;
        device = "/dev/sda";
        configurationLimit = 27;
      };
    };
    plymouth = {
      enable = true;
#     logo = '''';
      theme = "breeze";
    };

    kernelPackages = pkgs.linuxPackages_latest;
    vesa = true;
  };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/547e7266-c600-4f20-a02a-837db37702f5";
      fsType = "ext4";
    };

}
