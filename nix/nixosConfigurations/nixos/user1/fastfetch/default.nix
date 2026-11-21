{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/fastfetch";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.fastfetch.enable = true;

    xdg.configFile."fastfetch/configs".source      = ./configs;
    xdg.configFile."fastfetch/config.jsonc".source = link "configs/config.jsonc";
}
