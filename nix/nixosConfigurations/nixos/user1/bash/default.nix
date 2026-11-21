{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/bash";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    programs.bash.enable = true;
    programs.bash.historyFileSize = 100000;
    programs.bash.historySize = 10000;

    programs.bash.bashrcExtra = builtins.readFile ./bash.bashrc;

    xdg.configFile."bash".source = link "scripts";
}
