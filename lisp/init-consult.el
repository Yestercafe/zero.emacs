;;; init-swiper.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package consult
  :ensure t
  :bind
  (("C-s" . consult-line))
  :init (setq
	 consult-narrow-key "<"
	 consult-line-numbers-widen t
	 consult-async-min-input 2
	 consult-async-refresh-delay  0.15
	 consult-async-input-throttle 0.2
	 consult-async-input-debounce 0.1)
  )

(use-package embark-consult
  :ensure t
  :init (define-key minibuffer-local-map (kbd "C-c C-e") 'embark-export-write)
  )

(use-package wgrep
  :ensure t
  )

(eval-after-load
    'consult
  '(eval-after-load
       'embark
     '(progn
	(require 'embark-consult)
	(add-hook
	 'embark-collect-mode-hook
	 #'consult-preview-at-point-mode))))

(provide 'init-consult)

;;; init-swiper.el ends here
