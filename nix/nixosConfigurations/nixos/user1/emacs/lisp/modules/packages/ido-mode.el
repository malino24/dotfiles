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
