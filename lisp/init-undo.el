;;; init-undo.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package undo-fu
  :ensure t
  :bind
  (("C-/" . undo-fu-only-undo)
   ("C-S-/" . undo-fu-only-redo))
  )

(provide 'init-undo)

;;; init-undo.el ends here

