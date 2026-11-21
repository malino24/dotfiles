{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/foot";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.foot.enable = true;

    home.packages = [ pkgs.nerd-fonts.jetbrains-mono ];

    xdg.configFile."foot/foot.ini".source = link "foot.ini";
    xdg.configFile."foot/themes".source = link "themes";
}
