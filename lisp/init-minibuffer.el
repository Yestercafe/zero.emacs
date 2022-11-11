;;; init-minibuffer.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package vertico
  :ensure t
  :init (vertico-mode t)
  )

(use-package orderless
  :ensure t
  :init (setq completion-styles '(orderless))
  )

(use-package marginalia
  :ensure t
  :init (marginalia-mode t))

(provide 'init-minibuffer)

;;; init-minibuffer.el ends here
