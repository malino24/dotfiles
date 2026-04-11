{ config, pkgs, ... }:

{
    imports = [
        ./plasma.nix
        ./openssh.nix
    ];
}
