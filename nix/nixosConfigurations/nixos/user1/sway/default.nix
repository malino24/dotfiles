{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/sway";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    xdg.configFile."sway/config".source = link "config";

    home.packages = with pkgs; [
        kdePackages.breeze

        brightnessctl
        grim
        pavucontrol
        pamixer
        slurp
        swayidle
        swaylock
        wl-clipboard
        wmenu
    ];
}
