;;; irony.el --- Irony configuration

;;; Commentary:

;;; Code:

;; Hack to make irony-mode work with cmake-ide
(defadvice irony-cdb--locate-dominating-file-with-dirs
    (before irony-cdb--locate-dominating-file-with-dirs-before
	    (file name subdirectories) activate)
  "Check if some subdir is absolute, if so, set file to root."
  (cl-loop for subdir in subdirectories
	   do (if (file-name-absolute-p subdir)
		  (setq file "/."))))

(add-hook 'c++-mode-hook 'irony-mode)

(provide 'irony.el)
;;; irony.el ends here

