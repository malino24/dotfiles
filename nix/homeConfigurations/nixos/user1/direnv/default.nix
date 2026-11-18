{ config, pkgs, lib, devshells, ... }:

{
    programs.direnv.enable = true;
    programs.direnv.silent = true;
    programs.direnv.nix-direnv.enable = true;

    programs.direnv.enableBashIntegration = true;
    programs.direnv.enableZshIntegration = true;
    programs.direnv.enableFishIntegration = true;
    programs.direnv.enableNushellIntegration = true;

    programs.git.ignores = [
        ".direnv/"
    ];
}
