
{ config, pkgs, ... }:

{
    # Bootloader
    boot.loader.grub.enable = true;
    boot.loader.grub.device = "/dev/disk/by-uuid/0565-6755";
    boot.loader.grub.useOSProber = true;


    # Bootloader (This was the default in a blank NixOS install)
    # boot.loader.systemd-boot.enable = true;
    # boot.loader.efi.canTouchEfiVariables = true;

    # Use latest kernel.
    boot.kernelPackages = pkgs.linuxPackages_latest;
}
