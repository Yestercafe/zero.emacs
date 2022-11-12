;;; init-flycheck.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
  :config
  ;; 禁用 lisp check doc
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc))
  )

(provide 'init-flycheck)

;;; init-flycheck.el ends here
