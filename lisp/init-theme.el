;;; init-theme.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq custom-safe-themes t)

(use-package hybrid-reverse-theme
  :ensure t
  :init (load-theme 'hybrid-reverse t))

(provide 'init-theme)

;;; init-theme.el ends here
