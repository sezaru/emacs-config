;;; c++.el --- C++ configuration

;;; Commentary:

;;; Code:

(add-to-list 'load-path "~/.emacs.d/packages/cc-mode")
(add-to-list 'load-path "~/.emacs.d/packages/c++14-mode")

(require 'c++14)

;; Set C/C++ indentation level to 0
(c-set-offset (quote cpp-macro) 0 nil)
(c-set-offset 'substatement-open 0)

(add-hook 'c++-mode-hook
	  '(lambda ()
	     (define-key c++-mode-map (kbd "RET") 'newline-and-indent)))

(add-hook 'c-mode-hook
	  '(lambda ()
	     (define-key c-mode-map (kbd "RET") 'newline-and-indent)))

(provide 'c++.el)
;;; c++.el ends here
