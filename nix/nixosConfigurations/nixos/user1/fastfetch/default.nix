{ config, pkgs, ... }:
let
    usedThemeFile = "minimal.jsonc";
    link = file: config.lib.file.mkOutOfStoreSymlink "${config.xdg.configHome}/fastfetch/${file}";
in
{
    programs.fastfetch.enable = true;

    xdg.configFile."fastfetch/default-full.jsonc".source = ./default-full.jsonc;
    xdg.configFile."fastfetch/default-minimal.jsonc".source = ./default-minimal.jsonc;
    xdg.configFile."fastfetch/theme-typecraft.jsonc".source = ./theme-typecraft.jsonc;
    xdg.configFile."fastfetch/minimal.jsonc".source = ./minimal.jsonc;

    xdg.configFile."fastfetch/config.jsonc".source = link usedThemeFile;
}
