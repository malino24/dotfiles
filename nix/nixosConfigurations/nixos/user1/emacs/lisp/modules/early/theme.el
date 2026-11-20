;; Set theme path
(add-to-list 'custom-theme-load-path "~/.config/emacs/lisp/themes")

;; Configure theme
(use-package base16-theme)

(if (display-graphic-p)
  (load-theme 'base16-material-darker t)
  (load-theme 'base16-material-darker-tui t))

(set-face-attribute 'line-number nil :background nil)
(set-fringe-mode 0)
;; Font
(add-to-list 'default-frame-alist
             '(font . "JetBrainsMono Nerd Font-18"))

;; Fallback Font for symbols for Legacy Computing
(defun my/setup-legacy-computing-font (&optional frame)
  (with-selected-frame (or frame (selected-frame))
    (set-fontset-font (face-attribute 'default :fontset)
                      '(#x1FB00 . #x1FBFF)
                      (font-spec :family "CaskaydiaCove Nerd Font")
                      nil 'prepend)))

(add-hook 'after-make-frame-functions #'my/setup-legacy-computing-font)
(add-hook 'window-setup-hook #'my/setup-legacy-computing-font)

;; Fixed height to prevent certain faces appearing smaller than others
(set-face-attribute 'default nil :height 180)
(set-face-attribute 'line-number nil :inherit 'default :height 1.0)
(set-face-attribute 'line-number-current-line nil :inherit 'line-number :height 1.0)
