{ config, pkgs, ... }:

{
    programs.zsh.enable = true;
    programs.zsh.autocd = false;
    programs.zsh.history.size = 100000;
}
