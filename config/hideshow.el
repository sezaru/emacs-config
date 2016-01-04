;;; hideshow.el --- Hideshow configuration

;;; Commentary:

;;; Code:

(add-hook 'c-mode-common-hook
          '(lambda()
             (local-set-key (kbd "C-c s") 'hs-show-block)
             (local-set-key (kbd "C-c h") 'hs-hide-block)
             (local-set-key (kbd "C-c S") 'hs-show-all)
             (local-set-key (kbd "C-c H") 'hs-hide-all)
             (hs-minor-mode t)))

(provide 'hideshow.el)
;;; hideshow.el ends here
