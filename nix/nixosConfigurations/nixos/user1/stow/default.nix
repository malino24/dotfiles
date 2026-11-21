{ config, pkgs, ... }:

{
    home.packages = [ pkgs.stow ];

    home.shellAliases = {
        "stow" = "stow -t ~";
    };
}
