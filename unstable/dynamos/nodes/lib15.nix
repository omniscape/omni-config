{ config, lib, pkgs, ... }:

{

  # Use the GRUB 2 boot loader.
  boot = {
    loader = {
      timeout = 4;
      grub = {
        enable = true;
        version = 2;
        device = "/dev/nvme0n1";
        configurationLimit = 27;
        trustedBoot = {
          enable = true;
          systemHasTPM = "YES_TPM_is_activated";
        };
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

  boot.initrd.availableKernelModules = [ "xhci_pci" "dwc3_pci" "ahci" "nvme" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  # TODO: change filesystem to NVMe
  #fileSystems."/" =
  #  { device = "/dev/disk/by-uuid/547e7266-c600-4f20-a02a-837db37702f5";
  #    fsType = "ext4";
  #  };

  powerManagement.cpuFreqGovernor = "performance";

  networking.hostName = "N1";

}
