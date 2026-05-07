(deftheme base16-material-darker-tui)

(let ((bg "#212121")
      (fg "#eeffff")

      (black "#000000")
      (red "#ff5370")
      (green "#c3e88d")
      (yellow "#ffcb6b")
      (blue "#82aaff")
      (magenta "#c792ea")
      (cyan "#89ddff")
      (white "#ffffff")
      (bright-black "#545454"))

  (custom-theme-set-faces
   'base16-material-darker-tui

   ;; Grundfarben
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background "#ffffff"))))

   ;; Kommentare / Strings
   `(font-lock-comment-face ((t (:foreground ,bright-black))))
   `(font-lock-string-face ((t (:foreground ,green))))

   ;; Keywords
   `(font-lock-keyword-face ((t (:foreground ,magenta))))

   ;; Types
   `(font-lock-type-face ((t (:foreground ,yellow))))


   ;; Funktionen
   `(font-lock-function-name-face ((t (:foreground ,blue))))

   ;; Variablen
   `(font-lock-variable-name-face ((t (:foreground ,red))))

   ;; Konstanten
   `(font-lock-constant-face ((t (:foreground ,magenta))))

   ;; Warnungen
   `(font-lock-warning-face ((t (:foreground ,red :weight bold))))

   ;; Region (Selection)
   `(region ((t (:background ,fg :foreground ,bright-black))))

   ;; Line numbers
   `(line-number ((t (:foreground ,bright-black :background ,bg))))
   `(line-number-current-line ((t (:foreground ,fg :background ,bg))))))

(provide-theme 'base16-material-darker-tui)