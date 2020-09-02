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
(defun avy-thing-cut-sexp ()
  "Cut sexp at current point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-sexp)))

;;;###autoload
(defun avy-thing-copy-sexp (&optional yank-conditional)
  "Copy sexp at current point.
With the universal argument, the text will also be killed."
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-sexp nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-sexp ()
  "Copy sexp at current point.
With the universal argument, the text will also be killed."
  (interactive)
  (avy-thing-copy-sexp t))

;;;###autoload
(defun avy-thing-replace-sexp ()
  "Replace sexp at current point with the content of kill-ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-sexp)))

;;;###autoload
(defun avy-thing-cut-email ()
  "Cut email at current point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-email)))

;;;###autoload
(defun avy-thing-copy-email (&optional yank-conditional)
  "Copy email at current point.
With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-email nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-email ()
  "Copy email at current point.
With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-email t))

;;;###autoload
(defun avy-thing-replace-email ()
  "Replace email at current point with the content kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-email)))

;;;###autoload
(defun avy-thing-cut-filename ()
  "Cut filename at current point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-filename)))

;;;###autoload
(defun avy-thing-copy-filename (&optional yank-conditional)
  "Copy filename at current point.
With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-filename nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-filename ()
  "Copy filename at current point.
With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-filename t))

;;;###autoload
(defun avy-thing-replace-filename ()
  "Replace filename at current point with kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-filename)))

;;;###autoload
(defun avy-thing-cut-url ()
  "Cut url at current point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-url)))

;;;###autoload
(defun avy-thing-copy-url (&optional yank-conditional)
  "Copy url at current point.
With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-url nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-url ()
  "Copy url at current point.
With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-url t))

;;;###autoload
(defun avy-thing-replace-url ()
  "Replace url at current point with kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-url)))

;;;###autoload
(defun avy-thing-cut-word ()
  "Cut words at point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-word)))

;;;###autoload
(defun avy-thing-copy-word (&optional yank-conditional)
  "Copy words at point.
With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-word nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-word ()
  "Copy words at point.
With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-word t))

;;;###autoload
(defun avy-thing-replace-word ()
  "Replace words at point with kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-word)))

;;;###autoload
(defun avy-thing-cut-symbol ()
  "Cut symbol around point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-symbol)))

;;;###autoload
(defun avy-thing-copy-symbol (&optional yank-conditional)
  "Copy symbol around point.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-symbol nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-symbol ()
  "Copy symbol around point.
 With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-symbol t))

;;;###autoload
(defun avy-thing-replace-symbol ()
  "Replace symbol around point with kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-symbol)))

;;;###autoload
(defun avy-thing-cut-line ()
  "Cut current line into Kill-Ring without mark the line."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-line)))

;;;###autoload
(defun avy-thing-copy-line (&optional yank-conditional)
  "Copy current line into Kill-Ring without mark the line.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-line nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-line ()
  "Copy current line into Kill-Ring without mark the line.
 With the universal argument, the text will also be killed"
  (interactive)
  (avy-copy-line t))

;;;###autoload
(defun avy-thing-replace-line ()
  "Replace current line with kill ring"
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-line)))

;;;###autoload
(defun avy-thing-cut-paragraph ()
  "Cut current paragraph around the point"
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-paragraph)))

;;;###autoload
(defun avy-thing-copy-paragraph (&optional yank-conditional)
  "Copy current paragraph around the point.
With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-paragraph nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-paragraph ()
  "Copy current paragraph around the point.
With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-paragraph t))

;;;###autoload
(defun avy-thing-replace-paragraph ()
  "Replace current paragraph around the point with the content of kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-paragraph)))

;;;###autoload
(defun avy-thing-cut-defun ()
  "Cut function around point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-defun)))

;;;###autoload
(defun avy-thing-copy-defun (&optional yank-conditional)
  "Cut function around point.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-defun nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-defun ()
  "Cut function around point.
 With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-defun t))

;;;###autoload
(defun avy-thing-replace-defun ()
  "Replace function around point with the content of kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-defun)))

;;;###autoload
(defun avy-thing-cut-list ()
  "Cut list around point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-list)))

;;;###autoload
(defun avy-thing-copy-list (&optional yank-conditional)
  "Cut list around point.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-list nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-list ()
  "Cut list around point.
 With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-list t))

;;;###autoload
(defun avy-thing-replace-list ()
  "Replace list around point with the content of kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-list)))

;;;###autoload
(defun avy-thing-cut-sentence ()
  "Cut sentence around point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-sentence)))

;;;###autoload
(defun avy-thing-copy-sentence (&optional yank-conditional)
  "Cut sentence around point.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-sentence nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-sentence ()
  "Cut sentence around point.
 With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-sentence t))

;;;###autoload
(defun avy-thing-replace-sentence ()
  "Replace sentence around point with the content of currnt line."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-sentence)))

;;;###autoload
(defun avy-thing-cut-whitespace ()
  "Cut whitespace around point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-whitespace)))

;;;###autoload
(defun avy-thing-copy-whitespace (&optional yank-conditional)
  "Cut whitespace around point.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-whitespace nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-replace-whitespace ()
  "Replace whitespace around point with the content of currnt line."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-whitespace)))

;;;###autoload
(defun avy-thing-cut-page ()
  "Cut page around point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-page)))

;;;###autoload
(defun avy-thing-copy-page (&optional yank-conditional)
  "Cut page around point.
 With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-page nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-replace-page ()
  "Replace page around point with the content of currnt line."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace 'page)))

;; Below function is not base on thingatpt, but it's effect like above function.
;; So i add to this package.
;;;###autoload
(defun avy-thing-cut-to-line-end ()
  "Cut content from current point to line end."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-to-line-end)))

;;;###autoload
(defun avy-thing-copy-to-line-end ()
  "Copy content from current point to line end.
If `KILL-CONDITIONAL' is non-nil, kill object,
otherwise copy object."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-to-line-end nil)))

;;;###autoload
(defun avy-thing-cut-to-line-beginning ()
  "Cut content from current point to line beginning."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-to-line-beginning)))

;;;###autoload
(defun avy-thing-copy-to-line-beginning (&optional kill-conditional)
  "Copy content from current point tot line beginning.
If `KILL-CONDITIONAL' is non-nil, kill object,
otherwise copy object."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-to-line-beginning nil)))

;;;###autoload
(defun avy-thing-cut-comment ()
  "Cut the comment around line.
If mark is active, it can cut all comment that in mark."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-comment)))

;;;###autoload
(defun avy-thing-copy-comment (&optional yank-conditional)
  "Copy the comment around line.
If mark is active, it can copy all comment that in mark.
If `KILL-CONDITIONAL' is non-nil, kill object,
otherwise copy object."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-comment nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-cut-number ()
  "Cut number at point."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-number)))

;;;###autoload
(defun avy-thing-copy-number (&optional yank-conditional)
  "Copy number at point.
With the universal argument, the text will also be killed"
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-number nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-number ()
  "Copy number at point.
With the universal argument, the text will also be killed"
  (interactive)
  (avy-thing-copy-number t))

;;;###autoload
(defun avy-thing-replace-number ()
  "Replace number at point with kill ring."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-number)))

;;;###autoload
(defun avy-thing-cut-parentheses ()
  "Cut content in match parentheses."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-parentheses)))

;;;###autoload
(defun avy-thing-copy-parentheses (&optional yank-conditional)
  "Copy content in match parentheses.
If `KILL-CONDITIONAL' is non-nil, kill object,
otherwise copy object."
  (interactive "P")
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-parentheses nil))
  (if yank-conditional
    (yank)))

;;;###autoload
(defun avy-thing-copy-and-yank-parentheses ()
  "Copy content in match parentheses.
If `KILL-CONDITIONAL' is non-nil, kill object,
otherwise copy object."
  (interactive)
  (avy-thing-copy-parentheses t))

;;;###autoload
(defun avy-thing-replace-parentheses ()
  "Replace content in match parentheses with the content of currnt line."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-parentheses)))

;;;###autoload
(defun avy-thing-copy-region-or-line (&optional kill-conditional)
  "Copy content of the current region or line.
If `KILL-CONDITIONAL' is non-nil, kill object,
otherwise copy object."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-copy-region-or-line nil)))

;;;###autoload
(defun avy-thing-cut-region-or-line ()
  "Cut content of the current region or line."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-cut-region-or-line)))

;;;###autoload
(defun avy-thing-replace-region-or-line ()
  "Replace the current region or line with the content."
  (interactive)
  (save-excursion
    (funcall-interactively avy-thing-edit-jump-command)
    (thing-replace-region-or-line)))

(provide 'avy-thing-edit)
;;; avy-thing-edit.el ends here
