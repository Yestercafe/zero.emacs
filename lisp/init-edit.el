;; -*- lexical-binding: t -*-

;; autopair parenthesis
(electric-pair-mode 1)

;; rainbow delimiters
(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

;; undo tree
(use-package undo-tree
  :ensure t
  :init
  (global-undo-tree-mode)
  :bind
  (("C-/" . undo-tree-undo)
   ("C-?" . undo-tree-redo)
   ("C-x u" . undo-tree-visualize)
   :map undo-tree-map
   ;; ("C-x r u" . nil)
   ;; ("C-x r U" . nil)
   ("C-x r" . nil)))

;; code formatter while saving
(use-package apheleia
  :ensure t
  :bind
  (("C-c t f" . 'apheleia-global-mode))
  :init
  ;; default turn off
  (apheleia-global-mode -1))

(use-package yasnippet
  :ensure t
  :init
  (yas-global-mode 1))

(use-package saveplace
  :hook (after-init . save-place-mode))

(provide 'init-edit)
