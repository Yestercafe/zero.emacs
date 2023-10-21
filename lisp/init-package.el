;; -*- lexical-binding: t -*-

(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
			 ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
			 ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))
(when *win*
  (setq package-gnupghome-dir "~/.epla-gnupg"))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package gcmh
  :ensure t
  :diminish
  :hook (emacs-startup . gcmh-mode)
  :init
  (setq gcmh-idle-delay 'auto
	gcmh-auto-idle-delay-factor 10
	gcmh-high-cons-threshold #x1000000))

(provide 'init-package)
