;;; init-haskell.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package haskell-mode
  :ensure t
  )

(use-package lsp-haskell
  :ensure t
  :after (lsp-mode)
  :init (add-hook 'haskell-mode-hook #'lsp)
  (add-hook 'haskell-literate-mode-hook #'lsp)
  )


(provide 'init-haskell)

;;; init-haskell.el ends here
