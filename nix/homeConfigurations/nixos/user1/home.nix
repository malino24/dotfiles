{ config, pkgs, ... }:

{
    home.stateVersion = "26.05";   

    programs.vim.enable = true;

    programs.git.enable = true;

    services.emacs.enable = true;

    programs.emacs.enable = true;
    programs.emacs.package = pkgs.emacs-pgtk;
}
