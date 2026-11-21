{ config, pkgs, ... }:

{
    programs.fzf.enable = true;
    programs.fzf.enableBashIntegration = true;
    programs.fzf.enableZshIntegration = true;
    programs.fzf.enableFishIntegration = true;
    programs.fzf.tmux.enableShellIntegration = true;

    home.shellAliases = {
        "fzfp" = "fzf --preview=\"bat --color=always {}\"";
    };
}
