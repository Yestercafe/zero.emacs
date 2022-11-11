;;; init-package.el --- Init package -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; 配置国内源
(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
                         ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

(require 'package)

;; 关闭启动时激活包
(setq package-enable-at-startup nil)

;; 初始化 package
(unless (bound-and-true-p package--intialized)
  (package-initialize))

;; 使用 use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; 使用 try
(use-package try
  :ensure t)


(provide 'init-package)

;;; init-package.el ends here
