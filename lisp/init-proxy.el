;;; init-proxy.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(setq url-proxy-services
      '(("http" . "127.0.0.1:7890")
        ("https" . "127.0.0.1:7890")))

(provide 'init-proxy)

;;; init-proxy.el ends here
