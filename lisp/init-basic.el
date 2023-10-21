;; -*- lexical-binding: t -*-

(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(toggle-frame-maximized)

;; no backup files
(setq make-backup-files nil
      backup-inhibited t
      auto-save-default nil
      auto-save-list-file-prefix nil)
;; switch yes/no options to y/n options
(fset 'yes-or-no-p 'y-or-n-p)
;; no bell
(setq ring-bell-function 'ignore)

;; highlight the editing line
(global-hl-line-mode 1)

;; show relative line number
(setq display-line-numbers-width-start t)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

(setq-default cursor-type 'bar)

;; highlight paired parenthesis in emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; Delete Selection mode lets you treat an Emacs region.
;; https://www.emacswiki.org/emacs/DeleteSelectionMode
(delete-selection-mode 1)

(setq-default tab-width 4)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 10)

(provide 'init-basic)
