;;; init-utils.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package restart-emacs
  :ensure t)

(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))

(use-package which-key
  :ensure t
  :init (which-key-mode)
  :init
  ;; Allow C-h to trigger which-key before it is done automatically
  (setq which-key-show-early-on-C-h t)
  (setq which-key-idle-delay 0.5)
  )

(provide 'init-utils)

;;; init-utils.el ends here
