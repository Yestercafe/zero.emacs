;;; init-recentf.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package recentf
  :ensure t
  :init (setq recentf-max-menu-item 10)
        (recentf-mode 1))

(provide 'init-recentf)

;;; init-recentf.el ends here
