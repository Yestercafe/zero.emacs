;;; init-utils.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package restart-emacs
  :ensure t)

(defun reload-init-file ()
  (interactive)
  (load-file user-init-file))

(provide 'init-utils)

;;; init-utils.el ends here
