{ config, pkgs, ... }:

{
    programs.git = {
        enable = true;
        lfs.enable = true;

        settings = {
            alias = {
                "lol" = "log --oneline";
                "graph" = "log --all --decorate --oneline --graph";
                "pushf" = "push --force-if-includes";
            };

            init.defaultBranch = "master";
        };
    };

    home.shellAliases = {
        "gs" = "git status";
        "gd" = "git diff";
        "gds" = "git diff --staged";
        "ga" = "git add";
        "gc" = "git commit";
        "gg" = "git graph";
    };
}
