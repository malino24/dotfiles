
{ config, pkgs, ... }:

{
    imports = [
        ./settings-my.nix
    ];

    # alacritty - a cross-platform, GPU-accelerated terminal emulator
    programs.alacritty.enable = true;

    # Copy catppuccin-mocha
    home.file.".config/alacritty/catppuccin-mocha.toml".source = ./catppuccin-mocha.toml;
}
