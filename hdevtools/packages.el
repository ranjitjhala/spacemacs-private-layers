;;; packages.el --- liquid-types Layer packages File for Spacemacs
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

(defvar hdevtools-packages
  '(
    haskell-mode
    flycheck
    flycheck-hdevtools
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defun hdevtools/init-flycheck-hdevtools ()
  "Initialize my extension"
  (progn
    (require 'flycheck-hdevtools)
    (add-hook 'haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-hdevtools)))
    (add-hook 'literate-haskell-mode-hook
              '(lambda () (flycheck-select-checker 'haskell-hlint)))
  )
)

(defvar hdevtools-excluded-packages '()
  "List of packages to exclude.")

;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
