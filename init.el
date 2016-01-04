;;; init.el --- Init configuration

;;; Commentary:

;;; Code:

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d")))

(defun load-user-file (file)
  "Load a user config FILE."
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(load-user-file "config/filesmode.el")
(load-user-file "config/core.el")
(load-user-file "config/functions.el")
(load-user-file "config/melpa.el")
(load-user-file "config/smex.el")
(load-user-file "config/c++.el")
(load-user-file "config/cmakeide.el")
(load-user-file "config/rtags.el")
(load-user-file "config/yasnippet.el")
(load-user-file "config/irony.el")
(load-user-file "config/company.el")
(load-user-file "config/flycheck.el")
(load-user-file "config/hideshow.el")
(load-user-file "config/nyancat.el")


;; Functions
;; (defun comment-or-uncomment-region-or-line ()
;;     "Comments or uncomments the region or the current line if there's no active region."
;;     (interactive)
;;     (let (beg end)
;;         (if (region-active-p)
;;             (setq beg (region-beginning) end (region-end))
;;             (setq beg (line-beginning-position) end (line-end-position)))
;;         (comment-or-uncomment-region beg end)
;;         (next-line)))

;; ;; Keybinds minor mode
;; (defvar keybinds-minor-mode-map (make-keymap) "keybinds-minor-mode keymap.")

;; ;; (define-key keybinds-minor-mode-map "\C-c\C-c" 'comment-or-uncomment-region-or-line)

;; (define-minor-mode keybinds-minor-mode
;;   "A minor mode so that keybinds settings override annoying major modes."
;;   nil " keybinds " 'keybinds-minor-mode-map)

;; (add-hook 'prog-mode-hook 'keybinds-minor-mode)
;; (add-hook 'text-mode-hook 'keybinds-minor-mode)


(require 'autopair)

;; IDO - Interactively Do Things
(ido-mode t)
(setq ido-enable-flex-matching t)

;;(setq jiralib-url "http://jira-host/jira") 

;;(require 'org-jira)

(provide 'init.el)
;;; init.el ends here
