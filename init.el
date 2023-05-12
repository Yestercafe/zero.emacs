(setq user-init-file (or load-file-name (buffer-file-name)))
(setq user-emacs-directory (file-name-directory user-init-file))

(require 'org)
(org-babel-load-file
 (expand-file-name "config.org"
		   user-emacs-directory))

