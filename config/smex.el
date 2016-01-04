;;; smex.el --- Smex configuration

;;; Commentary:

;;; Code:

;; Setup smex to better M-x usage
(setq smex-save-file
      (expand-file-name ".smex-items" user-emacs-directory))

(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(provide 'smex.el)
;;; smex.el ends here
