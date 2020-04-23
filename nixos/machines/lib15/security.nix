{ config, pkgs, ... }:

{
 security = {
   apparmor = {
     enable = true;
#     options available
   };
#   audit = {
#     enable = true;
#     options available
#   };
#   auditd.enable = true;
#   hideProcessInformation = true;
#   lockKernelModules = true; # TODO: add to boot.kernelModules first
 };
}
