# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
    imports = [
        ./audio.nix
        ./boot.nix
        ./experimental.nix
        ./firewall.nix
        ./graphics.nix
        ./hardware.nix
        ./locale.nix
        ./network.nix
        ./print.nix
        ./suid.nix
        ./time.nix
        ./touchpad.nix
        ./version.nix

        ./services
        ./users
        ./programs
    ];

    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
}
