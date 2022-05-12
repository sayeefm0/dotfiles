;;; init-magit --- git porcelain
;;; Commentary:
;;; Code:

(use-package magit
  :straight t
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))

(provide 'init-magit)

;;; init-magit.el ends here
