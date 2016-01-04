;;; c++14.el --- Minor mode for adding c++11/14 goodies to c++-mode.

;; Author: Eduardo Barreto Alexandre
;; Maintainer: Eduardo Barreto Alexandre
;; Created: 2016-01-01
;; Date: 2016-01-01
;; Version: 20160101
;; Keywords: C++ c++14 cc-mode

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;;; Code:

(require 'cc-mode)

(eval-when-compile
   (require 'cl)
   (require 'cc-fonts)
   (require 'cc-langs)) ;; work around cc-mode bug

(eval-and-compile
  (c-add-language 'c++14-mode 'c++-mode))

;;; Keywords

;; Built-in basic types
(c-lang-defconst c-primitive-type-kwds
  c++14 (append '("char16_t" "char32_t")))

;; Keywords that can prefix normal declarations of identifiers
(c-lang-defconst c-modifier-kwds
  c++14 (append '("thread_local" "noexcept")))

;; These can occur almost anywhere in types but they don't build a type of
;; themselves.
(c-lang-defconst c-type-modifier-kwds
  c++14 (append '("constexpr")))

;; Keywords that may be followed by a parenthesis expression that doesn't
;; contain type identifiers.
(c-lang-defconst c-paren-nontype-kwds
  c++14 (append '("decltype" "noexcept" "static_assert")))

;; Keywords for constants.
(c-lang-defconst c-constant-kwds
  c++14 (append '("nullptr")))

;; TODO: context-dependent keywords: final, override

(defconst c++14-font-lock-keywords-1 (c-lang-const c-matchers-1 c++14)
  "Minimal highlighting for c++14 mode.")

(defconst c++14-font-lock-keywords-2 (c-lang-const c-matchers-2 c++14)
  "Fast normal highlighting for c++14 mode.")

(defconst c++14-font-lock-keywords-3 (c-lang-const c-matchers-3 c++14)
  "Accurate normal highlighting for c++14 mode.")

(defvar c++14-font-lock-keywords c++14-font-lock-keywords-3
   "Default expressions to highlight in c++14 mode.")

;;;###autoload
(define-minor-mode c++14-mode
  "Minor mode for adding c++11/14 goodies to c++-mode."
  :lighter "c++14"
  (if c++14-mode
      (progn
        (font-lock-add-keywords nil c++14-font-lock-keywords)
        (when font-lock-mode
          (font-lock-fontify-buffer)))

    (font-lock-remove-keywords nil c++14-font-lock-keywords)
    (font-lock-add-keywords nil c++-font-lock-keywords)
    (when font-lock-mode
      (font-lock-fontify-buffer)))
  )

(add-hook 'c++-mode-hook 'c++14-mode)

(provide 'c++14)

;;; c++14.el ends here

