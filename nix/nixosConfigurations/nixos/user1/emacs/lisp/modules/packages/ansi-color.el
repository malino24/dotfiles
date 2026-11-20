(use-package ansi-color)

(defun my/ansi-color-compilation-filter ()
  (let ((inhibit-read-only t))
    (ansi-color-apply-on-region (point-min) (point-max))))

(add-hook 'compilation-filter-hook 'my/ansi-color-compilation-filter)
