{ lib, config, pkgs, ... }:
let
    isModule = name: type:
        if name == "default.nix" then
            false
        else if type == "regular" then
            lib.hasSuffix ".nix" name
        else if type == "directory" then
            builtins.pathExists (./. + "/${name}/default.nix")
        else
            false;

    fileNames = lib.filterAttrs isModule (builtins.readDir ./.);
    moduleNames = builtins.attrNames fileNames;
    modules = map(name: ./. + "/${name}") moduleNames;
in
{
    home.stateVersion = "26.05";
    imports = modules;
}
