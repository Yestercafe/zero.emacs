;; -*- lexical-binding: t -*-

(use-package ace-window
  :ensure t
  :bind
  (([remap other-window] . 'ace-window))
  :init
  (custom-set-faces
   '(aw-leading-char-face
     ((t (:interit ace-jump-face-foreground :height 3.0))))))

(provide 'init-buffers)
