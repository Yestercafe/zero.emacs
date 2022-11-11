;;; init-ace.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package ace-window
  :ensure t
  :bind
  (([remap other-window] . 'ace-window))
  :init
  ;; 调整 ace 标记的字体大小
  (custom-set-faces
   '(aw-leading-char-face
     ((t (:interit ace-jump-face-foreground :height 3.0)))))
  )

(provide 'init-ace)

;;; init-ace.el ends here
