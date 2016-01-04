;;; filesmode.el --- Filesmode configuration

;;; Commentary:

;;; Code:

(add-to-list 'auto-mode-alist '("\\.ebuild\\'" . sh-mode))

(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++14-mode))

(provide 'filesmode.el)
;;; filesmode.el ends here
