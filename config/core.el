;;; core.el --- Core configuration

;;; Commentary:

;;; Code:

;; Default emacs find path
(setq default-directory "~/")

;; Remove welcome buffer
(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

;; Remove toolbar, scrollbar and menubar
(progn
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (menu-bar-mode -1))

;; Format the title-bar to always include the buffer name
(setq frame-title-format "emacs - %b")

;; Scroll line by line
(setq scroll-step 1)

;; In every buffer, the line which contains the cursor will be fully highlighted
(global-hl-line-mode 1)

;; Make a new keyboard input erase all the selection
(delete-selection-mode t)

;; Make buffer names unique
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; Indicate empty lines in the end of file
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; Disable all the temporary files creation
(setq make-backup-files nil)
(setq create-lockfiles nil)

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)
(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))

;; Tabs behavior
(setq tab-width 2
      indent-tabs-mode nil)

;; Highlight search and query objects
(setq query-replace-highlight t)
(setq search-highlight t)

;; Replace yes and no with y and n
(fset 'yes-or-no-p 'y-or-n-p)

;; Always put a new line in the end of file if there is none
(setq require-final-newline t)

;; Set the default mode to text-mode
(setq major-mode 'text-mode)

;; Turn on parentheses matching
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Display the current column in the file
(column-number-mode t)

;; Undo and Redo split windows in emacs with C-c left and C-c right
(winner-mode t)

;; Show trailing whitespaces
(setq-default show-trailing-whitespace t)

;; Complete words with hippie expand
(global-set-key "\M-/" 'hippie-expand)

;; Compilation mode scrolls nicely
(require 'compile)
(setq compilation-scroll-output 'first-error)

;; Always remove trailing whirespaces when saving the file
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(provide 'core.el)
;;; core.el ends here
