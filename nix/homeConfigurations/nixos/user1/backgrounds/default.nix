{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/homeConfigurations/nixos/user1/backgrounds";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    xdg.configFile."backgrounds".source = link "backgrounds";
}
