{ config, pkgs, ... }:

{
    home.shellAliases = {
        "grep" = "grep --color=auto";
        "ls" = "ls --color=auto";

        "clearf" = "printf \"\e[H\e[3J\"";
        "hg" = "history | grep";
        "list-users" = "getent passwd | awk -F: '$3 >= 1000 && $3 < 30000 { print $1 }'";
    };
}
