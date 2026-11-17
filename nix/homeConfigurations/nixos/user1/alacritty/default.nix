{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/homeConfigurations/nixos/user1/alacritty";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.alacritty.enable = true;

    xdg.configFile."alacritty/alacritty.toml".source = link "alacritty.toml";
    xdg.configFile."alacritty/themes".source         = ./themes;

    home.packages = with pkgs; [
        nerd-fonts.jetbrains-mono
        nerd-fonts.caskaydia-cove
    ];
}
