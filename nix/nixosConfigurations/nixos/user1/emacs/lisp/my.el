(defun my/duplicate-line (&optional arg) (interactive "p") (duplicate-line arg) (next-line arg))
(global-set-key (kbd "C-,") 'my/duplicate-line)
