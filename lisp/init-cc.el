;;; init-cc.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(add-hook 'cc-mode-hook
	  (lambda ()
	    (setq lsp-clients-clangd-args '("-j=3"
				"--background-index"
				"--clang-tidy"
				"--completion-style=detailed"
				"--header-insertion=never"
				"--header-insertion-decorators=0"))
	    (after! lsp-clangd (set-lsp-priority! 'clangd 2))
	    (set-eglot-client! 'cc-mode '("clangd" "-j=3" "--clang-tidy"))))

(provide 'init-cc)

;;; init-cc.el ends here
