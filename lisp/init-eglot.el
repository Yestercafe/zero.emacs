;; -*- lexical-binding: t -*-

(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))

(provide 'init-eglot)
