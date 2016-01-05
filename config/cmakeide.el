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

(setq cmake-ide-flycheck-enabled nil)

(global-set-key (kbd "<f5>") 'cmake-ide-compile)

(provide 'cmakeide.el)
;;; cmakeide.el ends here
