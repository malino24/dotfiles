; Do not focking touch that
(setq custom-file "~/.config/emacs/custom-file.el")

; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

; Auto install packages
(defvar my-packages '(gruber-darker-theme
		      catppuccin-theme
		      material-theme
		      ))

(dolist (pkg my-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

; Minor modes
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(global-display-line-numbers-mode 1)

; Themes
(load-theme 'gruber-darker t)
;(load-theme 'catppuccin t)
;(load-theme 'material t)

; Load custom file
(when (file-exists-p custom-file)
  (load-file custom-file))
