{ inputs, lib, config, pkgs, ... }:
let
    importModules = import (inputs.self + "/nix/lib/modules/importModules.nix") { inherit lib; } [ ];
in
{
    imports = importModules ./.;

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    # Some programs need SUID wrappers, can be configured further or are
    # started in user sessions.
    # programs.mtr.enable = true;
    # programs.gnupg.agent = {
    #   enable = true;
    #   enableSSHSupport = true;
    # };
}
