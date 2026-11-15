{ inputs, lib, config, pkgs, ... }:
let
    importModules = import (inputs.self + "/nix/lib/modules/importModules.nix") { inherit lib; } [];
in
{
    home.stateVersion = "26.05";
    imports = importModules ./.;
}
