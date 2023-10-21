;; -*- lexical-binding: t -*-

(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))

(use-package quickrun
  :ensure t
  :commands (quickrun)
  :bind ("C-c r" . 'quickrun)
  :init
  (quickrun-add-command "c++"
						'((:command . "clang++")
						  (:exec . ("%c -std=c++20 %o -o %e %s"
									"%e %a"))
						  (:remove . ("%e")))
						:default "c++"))

(provide 'init-eglot)
