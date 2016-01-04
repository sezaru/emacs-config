;;; cmakeide.el --- Cmakeide configuration

;;; Commentary:

;;; Code:

(cmake-ide-setup)

(setq cmake-ide-flags-c++ (append '("-std=c++1y")
                                  (mapcar (lambda (item)(concat "-I" item))
                                          (split-string
                                           "
/usr/include/c++/4.8
/usr/include/i386-linux-gnu/c++/4.8
/usr/include/c++/4.8/backward
/usr/lib/gcc/i686-linux-gnu/4.8/include
/usr/local/include
/usr/lib/gcc/i686-linux-gnu/4.8/include-fixed
/usr/include/i386-linux-gnu
/usr/include
"))))

(setq cmake-ide-flags-c '("-I/usr/include"))

(global-set-key (kbd "<f5>") 'cmake-ide-compile)

;; Hack to add irony-mode support in cmake-ide
(defadvice cmake-ide-set-compiler-flags
    (before cmake-ide-set-compiler-flags-before
	    (buffer flags includes sys-includes) activate)
  "Add support for irony-mode."
  (when (buffer-live-p buffer)
    (with-current-buffer buffer
      (when (featurep 'irony)
	(setq irony-cdb-search-directory-list '())
	(add-to-list 'irony-cdb-search-directory-list (cmake-ide--get-dir))
	(irony-cdb-autosetup-compile-options)))))

(provide 'cmakeide.el)
;;; cmakeide.el ends here
