{ config, pkgs, ... }:

{
    programs.bash.enable = true;

    home.shellAliases = {
        "stow" = "stow -t ~";

        "grep" = "grep --color=auto";
        "ls" = "ls --color=auto";

        "ll" = "ls -bplh";
        "la" = "ls -bplah";

        "clearf" = "printf \"\e[H\e[3J\"";
        "hg" = "history | grep";
        "list-users" = "getent passwd | awk -F: '$3 >= 1000 && $3 < 30000 { print $1 }'";
    };
}
