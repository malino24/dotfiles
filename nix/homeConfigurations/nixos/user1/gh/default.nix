{ config, pkgs, ... }:

{
    programs.gh.enable = true;
    programs.gh.extensions = [ pkgs.gh-dash ];
}
