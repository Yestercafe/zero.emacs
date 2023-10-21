;; -*- lexical-binding: t -*-

(use-package company
  :ensure t
  :diminish (company-mode " Cmp.")
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :hook (after-init . global-company-mode)
  :bind (:map company-active-map
			  (("C-n" . company-select-next)
			   ("C-p" . company-select-previous)
			   ("C-<" . company-select-first)
			   ("C->" . company-select-last)
			   ("C-d" . company-show-doc-buffer)
			   ("<tab>" . company-complete)
			   ("M-." . company-show-location)
			   ("M-/" . company-other-backend)))
  :config (setq company-dabbrev-code-everywhere t
				company-dabbrev-code-modes t
				company-dabbrev-code-other-buffers 'all
				company-dabbrev-downcase nil
				company-dabbrev-ignore-case t
				company-dabbrev-other-buffers 'all
				company-require-match nil
				company-minimum-prefix-length 1
				company-show-numbers nil
				company-tooltip-limit 10
				company-idle-delay 0
				company-echo-delay 0
				company-tooltip-offset-display 'scrollbar
				company-begin-commands '(self-insert-command))
  (eval-after-load 'company
    '(add-to-list 'company-backends
				  '(company-abbrev company-yasnippet company-capf))))

;; better sorting and filtering
;; (use-package company-prescient
;;   :ensure t
;;   :init (company-prescient-mode 1))

(use-package company-box
  :ensure t
  :bind (:map company-active-map
			  ([remap company-show-doc-buffer] . company-box-doc-manually))
  :hook (company-mode . company-box-mode)
  :init (setq company-box-doc-delay 0.1))

(provide 'init-completion)
