
{ config, pkgs, ... }:

{
    # basic configuration of git, please change to your own
    programs.git = {
        enable = true;

        settings = {
            user = {
                name = "Marino";
                email = "";
            };
        };
    };
}
