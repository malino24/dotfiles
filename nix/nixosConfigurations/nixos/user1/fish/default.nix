{ config, pkgs, ... }:

{
    programs.fish.enable = true;
    programs.fish.interactiveShellInit = builtins.readFile ./config.fish;
}
