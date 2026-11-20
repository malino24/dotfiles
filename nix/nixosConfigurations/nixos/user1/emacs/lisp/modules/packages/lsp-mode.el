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
