;; -*- lexical-binding: t -*-

;; (setq user-init-file (or load-file-name (buffer-file-name)))
;; (setq user-emacs-directory (file-name-directory user-init-file))

;; (setq normal-gc-cons-threshold (* 20 1024 1024))
;; (setq init-gc-cons-threshold (* 128 1024 1024))
;; (setq gc-cons-threshold init-gc-cons-threshold)
;; (add-hook 'emacs-startup-hook
;;           (lambda () (setq gc-cons-threshold normal-gc-cons-threshold)))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'no-error 'no-message)

(add-to-list 'load-path "~/.emacs.d/lisp")

(require 'init-basic)
(require 'init-const)
(require 'init-funcs)

(require 'init-package)
(require 'init-system)
(require 'init-client)

(require 'init-completion)
(require 'init-edit)
(require 'init-tools)

(require 'init-buffers)
(require 'init-minibuffer)
(require 'init-project)

(require 'init-face)

(require 'init-eglot)
(require 'init-cpp)

;; (when (eq system-type 'windows-nt)
;;   (progn
;; 	(set-language-environment "UTF-8")
;; 	(set-default-coding-systems 'utf-8)
;; 	(set-keyboard-coding-system 'utf-8-unix)
;; 	(set-terminal-coding-system 'utf-8-unix)))

;; (require 'org)
;; (org-babel-load-file
;;  (expand-file-name "config.org"
;; 		   user-emacs-directory))
;;
;; (add-to-list 'load-path "~/.emacs.d/snippets")

