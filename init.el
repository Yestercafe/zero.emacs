;;; init.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(print (+ 1 1))

(defun sanityinc/headerise-elisp ()
  "Add minimal header and footer to an elisp buffer in order to placate flycheck."
  (interactive)
  (let ((fname (if (buffer-file-name)
                   (file-name-nondirectory (buffer-file-name))
                 (error "This buffer is not visiting a file"))))
    (save-excursion
      (goto-char (point-min))
      (insert ";;; " fname " --- Insert description here -*- lexical-binding: t -*-\n"
              ";;; Commentary:\n"
              ";;; Code:\n\n")
      (goto-char (point-max))
      (insert ";;; " fname " ends here\n"))))
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)

(provide 'init)

;;; init.el ends here

