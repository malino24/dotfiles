{ config, pkgs, ... }:

{
    services.emacs.enable = true;

    programs.emacs.enable = true;
    programs.emacs.package = pkgs.emacs-pgtk;
}