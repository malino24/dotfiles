;; Enable relative line numbers
(global-display-line-numbers-mode 1)
(setq-default display-line-numbers-type 'relative)

;; Disable line numbers in certain modes
(dolist (mode '(vterm-mode-hook))
  (add-hook mode (lambda() (display-line-numbers-mode 0))))
