;;; avy-thing-edit.el --- Extension thing edit

;; Author: Andy Stewart <lazycat.manatee@gmail.com>
;; Author: lyjdwh <lyjdwh@gmail.com>
;; Maintainer: lyjdwh <lyjdwh@gmail.com>
;; Copyright (C) 2008, 2009, Andy Stewart, all rights reserved.
;; Copyright (C) 2014, Arthur Miller <arthur.miller@live.com>, all rights reserved.
;; Copyright (C) 2020, lyjdwh <lyjdwh@gmail.com>, all rights reserved.
;; Created: 2020-08-30 20:18
;; Version: 1.0

;;; This file is NOT part of GNU Emacs

;;; License
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.

;;; Require
(require 'thingatpt)
(require 'thing-edit)

(defcustom avy-thing-edit-jump-command
  'evil-avy-goto-char-2
  "avy jump command"
  :type 'function)

;;;###autoload
(defmacro +avy-thing-cut-wrap! (name)
  `(defun ,(intern (format "avy-thing-cut-%s" name)) ()
     (interactive)
     (save-excursion
       (funcall-interactively avy-thing-edit-jump-command)
       (,(intern (format "thing-cut-%s" name))))))

;;;###autoload
(defmacro +avy-thing-copy-wrap! (name)
  `(defun ,(intern (format "avy-thing-copy-%s" name)) (&optional yank-conditional)
     (interactive)
     (save-excursion
       (funcall-interactively avy-thing-edit-jump-command)
       (,(intern (format "thing-copy-%s" name)) nil))
     (if yank-conditional
       (yank))))

;;;###autoload
(defmacro +avy-thing-copy-and-yank-wrap! (name)
  `(defun ,(intern (format "avy-thing-copy-and-yank-%s" name)) ()
     (interactive)
     (,(intern (format "avy-thing-copy-%s" name)) t)))

;;;###autoload
(defmacro +avy-thing-replace-wrap! (name)
  `(defun ,(intern (format "avy-thing-replace-%s" name)) ()
     (interactive)
     (save-excursion
       (funcall-interactively avy-thing-edit-jump-command)
       (,(intern (format "thing-replace-%s" name))))))

;;;###autoload (autoload 'avy-thing-cut-sexp "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "sexp")

;;;###autoload (autoload 'avy-thing-copy-sexp "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "sexp")

;;;###autoload (autoload 'avy-thing-copy-and-yank-sexp "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "sexp")

;;;###autoload (autoload 'avy-thing-replace-sexp "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "sexp")

;;;###autoload (autoload 'avy-thing-cut-email "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "email")

;;;###autoload (autoload 'avy-thing-copy-email "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "email")

;;;###autoload (autoload 'avy-thing-copy-and-yank-email "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "email")

;;;###autoload (autoload 'avy-thing-replace-email "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "email")

;;;###autoload (autoload 'avy-thing-cut-filename "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "filename")

;;;###autoload (autoload 'avy-thing-copy-filename "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "filename")

;;;###autoload (autoload 'avy-thing-copy-and-yank-filename "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "filename")

;;;###autoload (autoload 'avy-thing-replace-filename "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "filename")

;;;###autoload (autoload 'avy-thing-cut-url "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "url")

;;;###autoload (autoload 'avy-thing-copy-url "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "url")

;;;###autoload (autoload 'avy-thing-copy-and-yank-url "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "url")

;;;###autoload (autoload 'avy-thing-replace-url "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "url")

;;;###autoload (autoload 'avy-thing-cut-word "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "word")

;;;###autoload (autoload 'avy-thing-copy-word "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "word")

;;;###autoload (autoload 'avy-thing-copy-and-yank-word "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "word")

;;;###autoload (autoload 'avy-thing-replace-word "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "word")

;;;###autoload (autoload 'avy-thing-cut-symbol "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "symbol")

;;;###autoload (autoload 'avy-thing-copy-symbol "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "symbol")

;;;###autoload (autoload 'avy-thing-copy-and-yank-symbol "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "symbol")

;;;###autoload (autoload 'avy-thing-replace-symbol "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "symbol")

;;;###autoload (autoload 'avy-thing-cut-line "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "line")

;;;###autoload (autoload 'avy-thing-copy-line "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "line")

;;;###autoload (autoload 'avy-thing-copy-and-yank-line "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "line")

;;;###autoload (autoload 'avy-thing-replace-line "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "line")


;;;###autoload (autoload 'avy-thing-cut-paragraph "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "paragraph")

;;;###autoload (autoload 'avy-thing-copy-paragraph "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "paragraph")

;;;###autoload (autoload 'avy-thing-copy-and-yank-paragraph "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "paragraph")

;;;###autoload (autoload 'avy-thing-replace-paragraph "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "paragraph")

;;;###autoload (autoload 'avy-thing-cut-defun "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "defun")

;;;###autoload (autoload 'avy-thing-copy-defun "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "defun")

;;;###autoload (autoload 'avy-thing-copy-and-yank-defun "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "defun")

;;;###autoload (autoload 'avy-thing-replace-defun "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "defun")

;;;###autoload (autoload 'avy-thing-cut-list "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "list")

;;;###autoload (autoload 'avy-thing-copy-list "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "list")

;;;###autoload (autoload 'avy-thing-copy-and-yank-list "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "list")

;;;###autoload (autoload 'avy-thing-replace-list "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "list")


;;;###autoload (autoload 'avy-thing-cut-to-line-end "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "to-line-end")

;;;###autoload (autoload 'avy-thing-copy-to-line-end "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "to-line-end")


;;;###autoload (autoload 'avy-thing-cut-to-line-beginning "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "to-line-beginning")

;;;###autoload (autoload 'avy-thing-copy-to-line-beginning "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "to-line-beginning")

;;;###autoload (autoload 'avy-thing-cut-number "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "number")

;;;###autoload (autoload 'avy-thing-copy-number "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "number")

;;;###autoload (autoload 'avy-thing-copy-and-yank-number "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "number")

;;;###autoload (autoload 'avy-thing-replace-number "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "number")

;;;###autoload (autoload 'avy-thing-cut-parentheses "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "parentheses")

;;;###autoload (autoload 'avy-thing-copy-parentheses "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "parentheses")

;;;###autoload (autoload 'avy-thing-copy-and-yank-parentheses "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "parentheses")

;;;###autoload (autoload 'avy-thing-replace-parentheses "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "parentheses")

;;;###autoload (autoload 'avy-thing-cut-region-or-line "avy-thing-edit" nil t)
(+avy-thing-cut-wrap! "region-or-line")

;;;###autoload (autoload 'avy-thing-copy-region-or-line "avy-thing-edit" nil t)
(+avy-thing-copy-wrap! "region-or-line")

;;;###autoload (autoload 'avy-thing-copy-and-yank-region-or-line "avy-thing-edit" nil t)
(+avy-thing-copy-and-yank-wrap! "region-or-line")

;;;###autoload (autoload 'avy-thing-replace-region-or-line "avy-thing-edit" nil t)
(+avy-thing-replace-wrap! "region-or-line")

(provide 'avy-thing-edit)
;;; avy-thing-edit.el ends here
