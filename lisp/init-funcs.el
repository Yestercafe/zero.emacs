;; -*- lexical-binding: t -*-

(defun get-command-path (command)
  (if (not *win*)
      (string-trim (shell-command-to-string (concat "command -v " command)))
    (string-trim (shell-command-to-string (concat "where " command " 2>nul")))))

(defun check-command-available? (command)
  (not (string-empty-p (get-command-path command))))

(defun zero/debug (msg part)
  (if zero/*debug-flag*
      (message (concat "[zero] " part ": " msg))
    nil))

(provide 'init-funcs)
