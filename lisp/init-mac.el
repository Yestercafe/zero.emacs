;;; init-mac.el --- Specific config for macOS device -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(when *is-a-mac*
  (setq mac-command-modifier 'super)
  (setq mac-option-modifier 'meta)
  (global-set-key (kbd "S-`") 'ns-next-frame)
  (global-set-key (kbd "S-H") 'ns-do-hide-emacs)
  (setq mouse-wheel-scroll-amount '(1
                                    ((shift) . 5)
                                    ((control))))

  (defun open-current-file-in-finder ()
    (interactive)
    (shell-command "open -R ."))
  
  (defun open-current-file-directory ()
    (interactive)
    (shell-command "open ."))

  (defun reveal-in-iterm ()
    (interactive)
    (shell-command "open -a iTerm .")))

(provide 'init-mac)

;;; init-mac.el ends here
