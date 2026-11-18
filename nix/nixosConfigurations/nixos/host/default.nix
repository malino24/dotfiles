{ inputs, lib, config, pkgs, ... }:
let
    importModules = import (inputs.self + "/nix/lib/modules/importModules.nix") { inherit lib; } [ ];
in
{
    imports = importModules ./.;
}
