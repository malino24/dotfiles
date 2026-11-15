{ config, pkgs, ... }:

{
    programs.man.enable = true;
    programs.man.generateCaches = true;
}
