
{ config, pkgs, ... }:

{
    # Enable the KDE Plasma Desktop Environment.
    services.desktopManager.plasma6.enable = true;

    # Enable the Simple Desktop Display Manager.
    services.displayManager.sddm.enable = true;
    services.displayManager.sddm.wayland.enable = true;
}
