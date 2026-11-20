(use-package vterm)
(use-package eterm-256color)
(add-hook 'term-mode-hook #'eterm-256color-mode)
(add-hook 'ansi-term-mode-hook #'eterm-256color-mode)
