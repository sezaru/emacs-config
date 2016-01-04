;;; company.el --- Company configuration

;;; Commentary:

;;; Code:

(require 'company)

(setq company-idle-delay 10)
;;(setq company-backends
;;      '(company-yasnippet company-files company-clang company-keywords))
(setq company-backends
      '(company-files company-irony company-keywords company-yasnippet))

(add-hook 'c-mode-common-hook
          '(lambda()
             (company-mode 1)
             (global-set-key [C-return] 'company-complete-common)))

(provide 'company.el)
;;; company.el ends here
