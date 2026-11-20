{ config, pkgs, ... }:

{
    programs.eza.enable = true;
    programs.eza.enableBashIntegration = true;
    programs.eza.enableZshIntegration = true;
    programs.eza.enableFishIntegration = true;
    programs.eza.enableNushellIntegration = true;
}
