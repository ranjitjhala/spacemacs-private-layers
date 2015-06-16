;;; extensions.el --- refscript-types Layer extensions File for Spacemacs
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

(defvar refscript-types-pre-extensions
  '(
    )
  "List of all extensions to load before the packages.")

(defvar refscript-types-post-extensions
  '(
    liquid-tip
    flycheck-rsc
    )
  "List of all extensions to load after the packages.")

(defun refscript-types/init-flycheck-rsc ()
  "Initialize my extension"
  (progn
    (require 'flycheck-rsc)
  )
)

(defun refscript-types/init-liquid-tip ()
  "Initialize my extension"
  (progn
    (require 'liquid-tip)
    (add-hook 'typescript-mode-hook
                '(lambda () (liquid-tip-mode)))
    )
)
