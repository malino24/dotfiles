(setq warning-minimum-level :error)

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file 'noerror)

(add-to-list 'load-path "~/.config/emacs/lisp/packages")
(add-to-list 'custom-theme-load-path "~/.config/emacs/lisp/themes")

;; Use y/n instead of yes/no
(setq use-short-answers t)

;; Handle startup screen
(setq inhibit-startup-screen t)
(setq visible-bell nil)

;; Hide menu bar, tool bar, scroll bar
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Show line numbers
(global-display-line-numbers-mode 1)
(setq-default display-line-numbers-type 'relative)

;; Disable line numbers in certain modes
(dolist (mode '(vterm-mode-hook)) (add-hook mode (lambda() (display-line-numbers-mode 0))))

;; Save history
(savehist-mode 1)

;; Prevent Emacs from inserting tabs instead of spaces
(setq-default indent-tabs-mode nil)

;; Custom keybinds
(global-set-key (kbd "C-x c") 'compile)

;; Start maximized
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Font
(add-to-list 'default-frame-alist `(font . ,(pcase system-type
    ('windows-nt "Consolas-13")
    ('gnu/linux "JetBrainsMono Nerd Font-18"))))

(set-face-attribute 'default nil :height 180)
(set-face-attribute 'line-number nil :inherit 'default :height 1.0)
(set-face-attribute 'line-number-current-line nil :inherit 'line-number :height 1.0)

;; Custom keybinds
(defun my/duplicate-line (&optional arg)
    (interactive "p")
    (duplicate-line arg)
    (next-line arg))

(global-set-key (kbd "C-,") 'my/duplicate-line)

;; Automaticcally open symlinks from VCS repo's
(setq vc-follow-symlinks nil)

;; Set up MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; Set up use-package
(require 'use-package)
(setq use-package-always-ensure t)

;; Configure theme
(setq custom-safe-themes 't)
(use-package gruber-darker-theme)
(use-package base16-theme)

(if (display-graphic-p)
  (load-theme 'base16-material-darker t)
  (load-theme 'base16-material-darker-tui t))

(set-face-attribute 'line-number nil :background nil)
(set-fringe-mode 0)

;; Configure Ido
(use-package ido)
(use-package ido-completing-read+)
(use-package ido-vertical-mode)

(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(ido-vertical-mode 1)

(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)

(setq ido-auto-merge-delay-time nil)             ; Stop autocorrecting
(setq ido-auto-merge-work-directories-length -1) ; Stop searching in other directories
(setq ido-confirm-unique-completion t)

(add-hook 'ido-setup-hook
  (lambda ()
    (define-key ido-completion-map (kbd "<C-return>") 'ido-select-text)))

;; Configure smex
(use-package smex)
(global-set-key (kbd "M-x") 'smex)

;; Configure recentf (open recently opened files
(use-package recentf)
(recentf-mode 1)
(global-set-key (kbd "C-x f") 'recentf-open-files)

;; Configure multiple cursors
(use-package multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Configure evil mode
(use-package evil)
(evil-mode -1)
(evil-set-initial-state 'dired-mode 'emacs)

;; Configure magit
(use-package magit)

;; Configure vterm
(use-package vterm)
(use-package eterm-256color)
(add-hook 'term-mode-hook #'eterm-256color-mode)
(add-hook 'ansi-term-mode-hook #'eterm-256color-mode)

;; Configure c-mode
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-set-style "allman")
(setq-default c-basic-offset 4)

;; Configure ansi-color
(use-package ansi-color)

(defun my/ansi-color-compilation-filter ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

(add-hook 'compilation-filter-hook 'my/ansi-color-compilation-filter)

;; Configure Dired
(use-package nerd-icons-dired)
(add-hook 'dired-mode-hook #'nerd-icons-dired-mode)
(setq dired-create-destination-dirs 'ask)

;; Configure ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Custom major modes
(use-package rust-mode)

;; lsp-mode
(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")

  :hook (
         (rust-mode . lsp)
         (lsp-mode . lsp-enable-which-key-integration))

  :commands lsp)

(setq lsp-eldoc-enable-hover nil)
(setq lsp-signature-auto-activate nil)

;;(use-package lsp-ui
;;  :commands lsp-ui-mode)

(use-package dap-mode)

(use-package which-key
    :config
    (which-key-mode))

