{ config, pkgs, ... }:

{
    home.packages = [ pkgs._7zz ];

    home.shellAliases = {
        "7z" = "7zz";
    };
}
