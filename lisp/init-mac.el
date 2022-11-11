;;; init-mac.el --- Specific config for macOS device -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when *is-a-mac*
  (setq mac-command-modifier 'super)
  (setq mac-option-modifier 'meta))

(provide 'init-mac)

;;; init-mac.el ends here
