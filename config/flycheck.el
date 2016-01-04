;;; flycheck.el --- Flycheck configuration

;;; Commentary:

;;; Code:

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(add-hook 'c++-mode-hook
          '(lambda()
             (setq flycheck-clang-language-standard "c++1y")))

(provide 'flycheck.el)
;;; flycheck.el ends here
