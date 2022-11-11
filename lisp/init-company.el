;;; init-company.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package company
  :ensure t
  :diminish (company-mode " Cmp.")
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  ;; 全局加载 company
  :hook (after-init . global-company-mode)
  ;; 绑定常用快捷键
  :bind (:map company-active-map
	      (("C-n" . company-select-next)
	       ("C-p" . company-select-previous)
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
                  '(company-abbrev company-yasnippet company-capf)))
  )

;; Better sorting and filtering
(use-package company-prescient
  :ensure t
  :init (company-prescient-mode 1))

;; 成对符号自动补齐
(electric-pair-mode 1)

;; 彩虹界符
(use-package rainbow-delimiters
  :ensure
  :hook (prog-mode . rainbow-delimiters-mode))


(provide 'init-company)

;;; init-company.el ends here
