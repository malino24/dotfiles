{ config, pkgs, ... }:

{
    home.packages = [ pkgs.gdb pkgs.gf ];
}
