{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/starship";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.starship.enable = true;
    programs.starship.enableInteractive = true;

    programs.starship.enableBashIntegration = true;
    programs.starship.enableZshIntegration = true;
    programs.starship.enableFishIntegration = true;
    programs.starship.enableNushellIntegration = true;

    xdg.configFile."starship.toml".source = link "./configs/starship.toml";
}
