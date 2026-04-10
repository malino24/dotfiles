
{ config, pkgs, ... }:

{
    # Bootloader
    boot.loader.grub.enable = true;
    boot.loader.grub.device = "/dev/vda";
    boot.loader.grub.useOSProber = true;

    # Use latest kernel.
    boot.kernelPackages = pkgs.linuxPackages_latest;
}
