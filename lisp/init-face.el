;; -*- lexical-binding: t -*-

(use-package font-utils
  :ensure t)
(use-package ucs-utils
  :ensure t)
(use-package list-utils
  :ensure t)

(cond (*mac* (set-face-attribute 'default nil
				 :family "Monaco"
				 :height 130))
      (*win* (set-face-attribute 'default nil
				 :family "Cascadia Code"
				 :height 120))
      (t (set-face-attribute 'default nil
			     :family "Fira Code"
			     :height 120)))

;; --- deprecated ---
;; (set-frame-font "SFMono Nerd Font-14")
;; (setq default-frame-alist '((font . "SFMono Nerd Font-14")))

(when *mac*
  (setq default-frame-alist '((ns-transparent-titlebar . t))))

(use-package unicode-fonts
  :ensure t
  :init (unicode-fonts-setup))

(defun unicode-fonts-setup-h (frame)
  "Run unicode-fonts-setup, then remove the hook."
  (progn
    (select-frame frame)
    (unicode-fonts-setup)
    (message "Removing unicode-fonts-setup to after-make-frame-functions hook")
    (remove-hook 'after-make-frame-functions 'unicode-fonts-setup-h)
    ))
(add-hook 'after-make-frame-functions 'unicode-fonts-setup-h nil)

;; prettify symbols
(add-hook 'prog-mode-hook #'prettify-symbols-mode)
(setq-default prettify-symbols-alist '(("lambda" . ?λ)
				       ("<-"     . ?←)
				       ("->"     . ?→)
				       ("->>"    . ?↠)
				       ("=>"     . ?⇒)
				       ("map"    . ?↦)
				       ("/="     . ?≠)
				       ("!="     . ?≠)
				       ("=="     . ?≡)
				       ("<="     . ?≤)
				       (">="     . ?≥)
				       ("=<<"    . (?= (Br . Bl) ?≪))
				       (">>="    . (?≫ (Br . Bl) ?=))
				       ("<=<"    . ?↢)
				       (">=>"    . ?↣)
				       ("&&"     . ?∧)
				       ("||"     . ?∨)
				       ("not"    . ?¬)))
(setq prettify-symbols-unprettify-at-point 'right-edge)

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (load-theme 'doom-one t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (all-the-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (setq doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

;; (use-package spacemacs-theme
;;   :ensure t)
;; (use-package color-theme-sanityinc-tomorrow
;;   :ensure t)

;; (defun light-on ()
;;   (interactive)
;;   (setq light-on-or-off 1)
;;   (color-theme-sanityinc-tomorrow-day)
;;   (when *mac*
;;     (set-frame-parameter nil 'ns-appearance 'light)))
;; (defun light-off ()
;;   (interactive)
;;   (setq light-on-or-off -1)
;;   (color-theme-sanityinc-tomorrow-night)
;;   (when *mac*
;;     (set-frame-parameter nil 'ns-appearance 'dark)))

;; (defun toggle-light ()
;;   (interactive)
;;   (if (> light-on-or-off 0)
;;       (light-off)
;;     (light-on)))

;; (global-set-key (kbd "C-c t t") 'toggle-light)
;; (light-off)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config (setq doom-modeline-support-imenu t
		doom-modeline-major-mode-icon t
		doom-modeline-major-mode-color-icon t
		doom-modeline-time t
		doom-modeline-indent-info t
		doom-modeline-battery t
		doom-modeline-env-version t))

(load-theme 'doom-tomorrow-night 1)

(provide 'init-face)
