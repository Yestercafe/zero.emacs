;; -*- lexical-binding: t -*-

(if (or (check-command-available? "wakatime-cli")
	(and (not *win*) (file-exists-p "~/.wakatime/wakatime-cli"))
	(and *win* (file-exists-p "~/.wakatime/wakatime-cli.exe")))
    (progn
      (use-package wakatime-mode
	:ensure t
	:init (global-wakatime-mode))
      (if *win*
	  (setq wakatime-cli-path "%HOME%\\.wakatime\\wakatime-cli.exe"))
      
      (zero/debug "loaded wakatime mode" "tool")))

(use-package keycast
  :ensure t)

(when *mac*
  (use-package dash-at-point
    :ensure t)
  (define-key global-map (kbd "C-c d") 'dash-at-point))

(use-package which-key
  :ensure t
  :init
  (which-key-mode)
  (setq which-key-show-early-on-C-h t)
  (setq which-key-idle-delay 0.5))

(use-package magit
  :ensure t)

;; vterm toggle
(when (not *win*)
  (progn
    (use-package vterm-toggle
      :ensure t
      :bind
      (("<f1>" . 'vterm-toggle)
       :map vterm-mode-map
       ("<f1>" . 'vterm-toggle)
       ("C-<f1>" . 'vterm-toggle-cd))
      :init
      (add-hook 'vterm-mode-hook (lambda ()
				   (display-line-numbers-mode -1))))))

(provide 'init-tools)
