;;; functions.el --- Functions configuration

;;; Commentary:

;;; Code:

;; Indent, remove tabs and delete trailing whitespaces
(defun untabify-buffer ()
  "Remove tabs from buffer."
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  "Indent buffer."
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Indent, remove tabs and delete training whitespaces from buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(global-set-key (kbd "C-c n") 'cleanup-buffer)

(provide 'functions.el)
;;; functions.el ends here
