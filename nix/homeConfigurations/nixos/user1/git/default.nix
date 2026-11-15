{ config, pkgs, ... }:

{
    programs.git = {
        enable = true;
        lfs.enable = true;

        settings = {
            alias = {
                "graph" = "log --all --decorate --oneline --graph";
                "pushf" = "push --force-if-includes";
            };

            init.defaultBranch = "master";
        };
    };
}