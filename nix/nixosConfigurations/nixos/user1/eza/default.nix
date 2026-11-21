{ config, pkgs, ... }:

{
    programs.eza.enable = true;
    programs.eza.enableBashIntegration = true;
    programs.eza.enableZshIntegration = true;
    programs.eza.enableFishIntegration = true;
    programs.eza.enableNushellIntegration = true;

    home.shellAliases = {
        "ll" = "eza --color=auto --long --icons --classify=always --git --mounts --group";
        "la" = "eza --color=auto --long --icons --classify=always --git --mounts --group --all";
        "lk" = "eza --color=auto --long --icons";
    };
}
