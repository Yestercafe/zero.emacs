;;; init-coq.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package proof-general
  :ensure t
  :init (setq proof-splash-seen t)
  )

(use-package company-coq
  :ensure t
  :init (add-hook 'coq-mode-hook #'company-coq-mode)
  )

(defun remove-when-cdr-is (lst target)
  (if (eq nil lst)
      nil
    (if (string= (cdar lst) target)
	(remove-when-cdr-is (cdr lst) target)
      (cons (car lst) (remove-when-cdr-is (cdr lst) target)))
  ))

;(defvar lsp-language-id-configuration (remove-when-cdr-is lsp-language-id-configuration "v"))

(require 'lsp-mode)
(add-to-list 'lsp-language-id-configuration '(coq-mode . "coq"))
(setq lsp-warn-no-matched-clients nil)

(provide 'init-coq)

;;; init-coq.el ends here
