{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/homeConfigurations/nixos/user1/ghostty";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.ghostty.enable = true;
    xdg.configFile."ghostty/config.ghostty".source = link "config.ghostty";
}
