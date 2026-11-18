{ config, pkgs, ... }:

{
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    # programs.mtr.enable = true;
    # programs.gnupg.agent = {
    #   enable = true;
    #   enableSSHSupport = true;
    # };

    programs.sway.enable = true;
    programs.sway.xwayland.enable = true;
    programs.sway.wrapperFeatures.base = true;
    programs.sway.wrapperFeatures.gtk = true;

    programs.sway.extraOptions = [ "--unsupported-gpu" ];

    programs.sway.extraPackages = with pkgs; [
        brightnessctl
        swayidle
        swaylock
        wmenu

        # Screenshot
        grim
        slurp

        # Audio
        pavucontrol
        pamixer
    ];

    security.rtkit.enable = true;

    services.pipewire.enable = true;
    services.pipewire.alsa.enable = true;
    services.pipewire.alsa.support32Bit = true;
    services.pipewire.pulse.enable = true;

    services.gnome.gnome-keyring.enable = true;
    security.polkit.enable = true;

    xdg.portal.enable = true;
    xdg.portal.wlr.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

    xdg.portal.config.sway = {
        default = [ "gtk" ];
        "org.freedesktop.impl.portal.ScreenCast" = [ "wlr" ];
        "org.freedesktop.impl.portal.Screenshot" = [ "wlr" ];
    };

    # List services that you want to enable:

    # Enable the OpenSSH daemon.
    # services.openssh.enable = true;
}
