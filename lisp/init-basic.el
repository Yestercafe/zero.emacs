;;; init-basic.el --- Basic configs for Emacs -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq inhibit-startup-screen t)

(if (display-graphic-p)
    (progn
      (tool-bar-mode -1)
      (scroll-bar-mode -1)))

(setq make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(delete-selection-mode 1)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode)
(setq ring-bell-function 'ignore)

(global-hl-line-mode 1)

(provide 'init-basic)

;;; init-basic.el ends here
