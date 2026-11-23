;; Custom file
(setq custom-file "~/.config/emacs/custom.el")
(load custom-file 'noerror)

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(require 'use-package)
(setq use-package-always-ensure nil)

;; Warnings
(setq warning-minimum-level :error)
(setq native-comp-async-report-warnings-errors 'silent)

;; Minor modes for frame
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(column-number-mode 1)
(savehist-mode 1)

;; Minor modes for buffer
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;; Preferences
(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)
(setq inhibit-splash-screen t)
(setq make-backup-files nil)
(setq-default tab-width 4)
(setq use-short-answers t)
(setq vc-follow-symlinks t)
(setq visible-bell nil)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setenv "MANROFFOPT" "-c")

;; Theme
(setq custom-safe-themes t)
(use-package base16-theme :init :config (load-theme 'base16-material-darker))
(set-face-attribute 'line-number nil :background nil)
(set-fringe-mode 0)

;; Font
(add-to-list 'default-frame-alist '(font . "JetBrainsMono Nerd Font-18"))

;; dired
(use-package nerd-icons-dired)
(add-hook 'dired-mode-hook #'nerd-icons-dired-mode)
(setq dired-create-destination-dirs 'always)

;; envrc
(use-package envrc)
(envrc-global-mode)
(setq envrc-show-summary-in-minibuffer nil)

;; ido
(use-package ido)
(use-package ido-completing-read+)
(use-package ido-vertical-mode)

(ido-mode 1)
(ido-everywhere 1)
(ido-ubiquitous-mode 1)
(ido-vertical-mode 1)

(setq ido-vertical-define-keys 'C-n-C-p-up-and-down)
(setq ido-auto-merge-delay-time nil)                 ; Stop autocorrecting
(setq ido-auto-merge-work-directories-length -1)     ; Stop searching in other directories
(setq ido-confirm-unique-completion t)

(add-hook 'ido-setup-hook
  (lambda () (define-key ido-completion-map (kbd "<C-return>") 'ido-select-text)))

;; magit
(use-package magit)
(setq magit-auto-revert-mode nil)
(global-set-key (kbd "C-c m s") 'magit-status)
(global-set-key (kbd "C-c m l") 'magit-log)

;; move-text
(use-package move-text)
(global-set-key (kbd "M-S-<up>") 'move-text-up)
(global-set-key (kbd "M-S-<down>") 'move-text-down)

;; multiple-cursors
(use-package multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->")         'mc/mark-next-like-this)
(global-set-key (kbd "C-<")         'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<")     'mc/mark-all-like-this)

;; recentf
(use-package recentf)
(recentf-mode 1)
(global-set-key (kbd "C-x f") 'recentf-open-files)

;; smex
(use-package smex)
(global-set-key (kbd "M-x") 'smex)

;; vterm
(use-package vterm)
(global-set-key (kbd "<f12>") 'vterm)
(add-hook 'vterm-mode-hook (lambda() (display-line-numbers-mode 0)))

;; which-key
(use-package which-key :config (which-key-mode 0))

;; whitespace-mode
(defun my/fix-whitespace-faces (&rest _)
  (set-face-attribute 'whitespace-space nil
                      :background 'unspecified
                      :foreground (face-foreground 'font-lock-comment-face nil t)))

(with-eval-after-load 'whitespace (my/fix-whitespace-faces))

(add-hook 'enable-theme-functions #'my/fix-whitespace-faces)

(setq whitespace-line-column 100)

(setq whitespace-style '(face
                         tabs
                         spaces
                         trailing
                         ;lines
                         space-before-tab
                         newline
                         indentation
                         empty
                         space-after-tab
                         ;space-mark
                         tab-mark
                         ;newline-mark
                         missing-newline-at-eof))

(global-whitespace-mode 1)
