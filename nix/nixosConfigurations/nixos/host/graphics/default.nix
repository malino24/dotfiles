{ config, pkgs, ... }:

{
    hardware.graphics.enable = true;
    hardware.graphics.enable32Bit = true;
    hardware.graphics.extraPackages = [ pkgs.nvidia-vaapi-driver ];

    hardware.nvidia.open = false;
    hardware.nvidia.modesetting.enable = true;
    hardware.nvidia.nvidiaSettings = true;
    hardware.nvidia.powerManagement.enable = false;

    services.xserver.videoDrivers = [ "nvidia" ];

    environment.sessionVariables = {
        "NIXOS_OZONE_WL" = "1";
        "LIBVA_DRIVER_NAME" = "nvidia";
        "NVD_BACKEND" = "direct";
        "MOZ_DISABLE_RDD_SANDBOX" = "1";
    };

    environment.systemPackages = [ pkgs.libva-utils ];
}
