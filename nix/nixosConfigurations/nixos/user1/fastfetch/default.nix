{ config, pkgs, ... }:
let
    usedThemeFile = "minimal.jsonc";
    link = file: config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/fastfetch/configs/${file}";
in
{
    programs.fastfetch.enable = true;

    xdg.configFile."fastfetch/configs".source      = ./configs;
    xdg.configFile."fastfetch/config.jsonc".source = link usedThemeFile;
}
