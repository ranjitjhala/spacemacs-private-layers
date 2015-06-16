;;; packages.el --- refscript-types Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(defvar refscript-types-packages
  '(
    flycheck
    typescript-mode
    button-lock
    pos-tip
    popup
    thingatpt
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun refscript-types/init-button-lock ())

(defvar refscript-types-excluded-packages '()
  "List of packages to exclude.")
