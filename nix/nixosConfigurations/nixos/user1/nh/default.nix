{ config, pkgs, ... }:

{
    programs.nh = {
        enable = true;
        clean.enable = true;
        clean.extraArgs = "--keep-since 4d --keep 3";
        flake = "/home/user1/dotfiles";
    };

    home.shellAliases = {
        "cdf" = "cd $NH_FLAKE";
        "nos" = "nh os switch";
    };
}
