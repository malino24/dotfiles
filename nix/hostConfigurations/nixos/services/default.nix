{ config, pkgs, ... }:

{
    import = [
        ./plasma.nix
        ./openssh.nix
    ]
}