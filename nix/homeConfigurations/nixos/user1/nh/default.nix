{ config, pkgs, ... }:

{
    programs.nh = {
        enable = true;
        clean.enable = true;
        clean.extraArgs = "--keep-since 4d --keep 3";
        flake = "/home/user1/dotfiles";
    };

    home.shellAliases = {
        "nos" = "nh os switch";
    };
}
