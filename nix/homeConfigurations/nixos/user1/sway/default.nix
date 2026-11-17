{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/homeConfigurations/nixos/user1/sway";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    xdg.configFile."sway/config".source = link "config";
}
