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

            user = {
                 email = "5430788+malino24@users.noreply.github.com";
                 name = "malino24";
            };
        };
    };

    home.shellAliases = {
        "gs" = "git status";
        "gd" = "git diff";
        "gds" = "git diff --staged";
        "ga" = "git add";
        "gc" = "git commit";
        "gca" = "git commit --amend";
        "gcae" = "git commit --amend --no-edit";
        "gg" = "git graph";
        "gl" = "git lol";

        "cdg" = "cd -- $(git rev-parse --show-toplevel)";
    };
}
