;;; init.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-a-linux* (eq system-type 'gnu/linux))
(defconst *is-a-windows* (or (eq system-type 'windows-nt)
			(eq system-type 'cygwin)))

(require 'init-package)
(require 'init-basic)

(require 'init-theme)
(require 'init-modeline)

(require 'init-ace)
(require 'init-consult)
(require 'init-counsel)
(require 'init-undo)
(require 'init-minibuffer)
(require 'init-recentf)

(require 'init-super)
(require 'init-mac)
(require 'init-utils)

(require 'init-company)
(require 'init-flycheck)
(require 'init-lsp)
(require 'init-lisp)
(require 'init-cc)
(require 'init-haskell)

(load-file (locate-user-emacs-file "local-configs.el"))

(provide 'init)

;;; init.el ends here

