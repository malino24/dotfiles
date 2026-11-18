{ config, pkgs, ... }:

{
    programs.gh.enable = true;

    programs.gh.extensions = with pkgs; [
        pkgs.gh-dash
        pkgs.gh-markdown-preview
    ];
}
