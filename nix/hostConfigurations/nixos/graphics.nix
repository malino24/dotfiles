
{ config, pkgs, ... }:

{
    hardware.graphics = {
        enable = true;
        enable32Bit = true;
    };

    services.xserver.videoDrivers = [ "nvidia" ];

    hardware.nvidia = {
        modesetting.enable = true;
        powerManagement.enable = true;
        open = false; # wichtig für RTX 3070 (standard empfohlen)
        nvidiaSettings = true;
    };

    # hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}