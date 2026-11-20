;;; init.el -*- lexical-binding: t; -*-

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file 'noerror)

(load "~/.config/emacs/lisp/modules/functions/init.el")
(load "~/.config/emacs/lisp/modules/packages/init.el")
(load "~/.config/emacs/lisp/modules/major-modes/init.el")
(load "~/.config/emacs/lisp/modules/minor-modes/init.el")
(load "~/.config/emacs/lisp/modules/warnings.el")

(setq use-short-answers t)
(setq-default indent-tabs-mode nil)
(setq inhibit-startup-screen t)
(setq visible-bell nil)
(setq vc-follow-symlinks nil)

(global-set-key (kbd "C-x c") 'compile)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setenv "MANROFFOPT" "-c")
