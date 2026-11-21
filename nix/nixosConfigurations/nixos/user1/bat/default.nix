{ config, pkgs, ... }:

{
    programs.bat.enable = true;

    home.shellAliases = {
        "cat" = "bat --color=auto --paging=never --style=plain";
    };
}
