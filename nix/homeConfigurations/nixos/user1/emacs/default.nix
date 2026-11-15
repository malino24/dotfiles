{ config, pkgs, ... }:

{
    services.emacs.enable = true;

    programs.emacs.enable = true;
    programs.emacs.package = pkgs.emacs-pgtk;

    xdg.configFile."emacs/init.el".source = ./init.el;
    xdg.configFile."emacs/lisp/themes/base16-material-darker-tui-theme.el".source = ./lisp/themes/base16-material-darker-tui-theme.el;
}
