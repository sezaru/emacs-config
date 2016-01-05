;;; flycheck.el --- Flycheck configuration

;;; Commentary:

;;; Code:

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(add-hook 'c++-mode-hook
          '(lambda()
             (setq flycheck-clang-language-standard "c++1y")))

(provide 'flycheck.el)
;;; flycheck.el ends here
