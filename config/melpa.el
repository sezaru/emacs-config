;;; melpa.el --- Melpa configuration

;;; Commentary:

;;; Code:

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")))

(package-initialize)

(provide 'melpa.el)
;;; melpa.el ends here
