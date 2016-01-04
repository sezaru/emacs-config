;;; rtags.el --- Rtags configuration

;;; Commentary:

;;; Code:

(require 'rtags)
(require 'company-rtags)

(rtags-enable-standard-keybindings c-mode-base-map)

(define-key c-mode-base-map (kbd "M-.") 'rtags-find-symbol-at-point)
(define-key c-mode-base-map (kbd "M-,") 'rtags-find-references-at-point)

(defadvice save-buffers-kill-terminal
    (before save-buffers-kill-terminal-before activate)
  "Hack to make Emacs stop asking to kill rdm when closing."
  (rtags-quit-rdm)
  (sit-for 0.1))

(provide 'rtags.el)
;;; rtags.el ends here
