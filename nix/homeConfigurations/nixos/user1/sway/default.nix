{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/homeConfigurations/nixos/user1/sway";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    xdg.configFile."sway/config".source = link "config";

    qt = {
        enable = true;
        platformTheme.name = "gtk";
        style.name = "breeze";
    };

    gtk = {
        enable = true;
        theme = {
            name = "Breeze";
            package = pkgs.kdePackages.breeze-gtk;
        };
        iconTheme = {
            name = "breeze";
            package = pkgs.kdePackages.breeze-icons;
        };
    };

    home.packages = with pkgs; [
        kdePackages.breeze
    ];
}
