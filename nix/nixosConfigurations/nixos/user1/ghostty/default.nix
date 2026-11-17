{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/ghostty";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.ghostty.enable = true;
    programs.ghostty.enableBashIntegration = true;
    programs.ghostty.enableZshIntegration = true;
    programs.ghostty.enableFishIntegration = true;

    home.packages = [
        pkgs.fish
        pkgs.nerd-fonts.jetbrains-mono
    ];

    xdg.configFile."ghostty/config.ghostty".source = link "config.ghostty";
}
