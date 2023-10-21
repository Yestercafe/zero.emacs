;; -*- lexical-binding: t -*-

(use-package exec-path-from-shell
  :ensure t)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(when (daemonp)
  (exec-path-from-shell-initialize)
  (scroll-bar-mode -1))

(when *mac*
  (progn
	(use-package osx-trash
	  :ensure t
	  :custom
	  (delete-by-moving-to-trash t)
	  :config
	  (osx-trash-setup))))

(provide 'init-system)
