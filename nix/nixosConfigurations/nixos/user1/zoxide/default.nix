{ config, pkgs, ... }:

{
    programs.zoxide.enable = true;
    programs.zoxide.enableBashIntegration = true;
    programs.zoxide.enableZshIntegration = true;
    programs.zoxide.enableFishIntegration = true;
    programs.zoxide.enableNushellIntegration = true;

    home.shellAliases = {
        "cd" = "z";
    };
}
