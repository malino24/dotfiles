{ config, pkgs, ... }:

{
    programs.tmux.enable = true;
    programs.tmux.mouse = true;
    programs.tmux.newSession = false;
}
