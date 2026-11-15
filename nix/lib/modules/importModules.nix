{ lib, ... }: exclude: dir:
let
    isModule = import ./isModule.nix { inherit lib; } dir exclude;

    fileNames = lib.filterAttrs isModule (builtins.readDir dir);
    moduleNames = builtins.attrNames fileNames;
    modules = map(name: dir + "/${name}") moduleNames;
in
    modules
