{ config, pkgs, ... }:

{
    home.packages = [ pkgs.sshfs ];
}
