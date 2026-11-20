(defun my/fix-whitespace-faces (&rest _)
  (set-face-attribute 'whitespace-space nil
                      :background 'unspecified
                      :foreground (face-foreground 'font-lock-comment-face nil t)))

(with-eval-after-load 'whitespace
  (my/fix-whitespace-faces))

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

(global-whitespace-mode 1) ; Disabled by default
