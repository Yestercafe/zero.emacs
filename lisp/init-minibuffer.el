;; -*- lexical-binding: t -*-

(use-package vertico
  :ensure t
  :init (vertico-mode t))
(use-package orderless
  :ensure t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles basic partial-completion)))))
(use-package savehist
  :ensure t
  :init
  (savehist-mode))

(use-package marginalia
  :ensure t
  :init (marginalia-mode t)
  :bind
  (("M-A" . marginalia-cycle)
   :map minibuffer-local-map
   ("M-A" . marginalia-cycle)))

(use-package consult
  :ensure t
  :bind
  (:map global-map
	("C-s" . 'consult-line)
	("C-c o g" . 'consult-goto-line)
	("C-c o m" . 'consult-mark)
	("C-c o M" . 'consult-global-mark)
	("C-c o o" . 'consult-global-outline)
	("C-c o c" . 'consult-imenu)
	("C-c o C" . 'consult-imenu-multi)
	("C-x r" . 'recentf)
	("C-x y" . 'consult-yank-from-kill-ring)))

(use-package embark
  :ensure t
  :bind
  (("C-;" . 'embark-act))
  :config
  (setq prefix-help-command 'embark-prefix-help-command))

(use-package embark-consult
  :ensure t)

(use-package wgrep
  :ensure t)

(eval-after-load 'consult
  '(eval-after-load 'embark
	 '(progn
		(require 'embark-consult)
		(add-hook 'embark-collect-mode-hook #'consult-preview-at-point-mode))))

(provide 'init-minibuffer)
