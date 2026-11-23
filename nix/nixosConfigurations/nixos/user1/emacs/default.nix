{ config, pkgs, ... }:
let
    baseDir = "${config.home.homeDirectory}/dotfiles/nix/nixosConfigurations/nixos/user1/emacs";
    link = file: config.lib.file.mkOutOfStoreSymlink "${baseDir}/${file}";
in
{
    services.emacs.enable = true;
    services.emacs.client.enable = true;

    programs.emacs = {
        enable = true;
        package = pkgs.emacs-pgtk;

        extraPackages = epkgs: [
            epkgs.base16-theme
            epkgs.envrc
            epkgs."ido-completing-read+"
            epkgs.ido-vertical-mode
            epkgs.magit
            epkgs.move-text
            epkgs.multiple-cursors
            epkgs.nerd-icons-dired
            epkgs.smex
            epkgs.use-package
            epkgs.vterm
            epkgs.which-key
        ];
    };

    home.packages = with pkgs; [
        nerd-fonts.jetbrains-mono
        nerd-fonts.caskaydia-cove
    ];

    programs.ripgrep.arguments = [
        "--no-heading"
        "--line-number"
    ];

    xdg.configFile."emacs/init.el".source = link "init.el";
    xdg.configFile."emacs/lisp".source = link "lisp";

    home.shellAliases = {
        "ec" = "emacsclient -nc";
    };
}
