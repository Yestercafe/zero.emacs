;;; init-modeline.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; fancy-battery 用于在 spaceline 中显示电量信息
(use-package fancy-battery
  :ensure t
  :init
  (setq fancy-battery-show-percentage t)
  (fancy-battery-mode)
  )

;; nyan-mode，在 spaceline 中显示一个彩虹猫，好玩的
(use-package nyan-mode
  :ensure t
  :init
  (setq nyan-animate-nyancat t)
  (setq nyan-wavy-trail t)
  (setq nyan-minimum-window-width 60)
  (setq nyan-bar-length 10)
  (nyan-mode)
  )

;; 在 modeline 中显示时间
(setq display-time-string-forms
      '(dayname " " month "/" day " " 24-hours ":" minutes " "))
(display-time-mode 1)

(use-package spaceline
  :ensure t
  :init
  (spaceline-spacemacs-theme)
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-evil-state-on)
  (spaceline-toggle-flycheck-error-on)
  (spaceline-toggle-flycheck-warning-on)
  (spaceline-toggle-flycheck-info-on)
  (spaceline-toggle-version-control-on)
  (spaceline-toggle-line-column-on)
  (spaceline-toggle-battery-on)
  (spaceline-toggle-input-method-on)
  (spaceline-toggle-buffer-size-off)
  )
  
(provide 'init-modeline)

;;; init-modeline.el ends here
