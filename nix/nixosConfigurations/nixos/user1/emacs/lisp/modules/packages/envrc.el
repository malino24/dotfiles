;; Configure envrc
(use-package envrc
  :hook (after-init . envrc-global-mode)
  :custom (envrc-show-summary-in-minibuffer nil))
