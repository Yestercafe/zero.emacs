;; -*- lexical-binding: t -*-

(add-hook 'c-mode-hook #'eglot-ensure)
(add-hook 'c++-mode-hook #'eglot-ensure)

(provide 'init-cpp)
