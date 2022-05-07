;;; init-magit --- install and configure magit
;;; Commentary:
;; Magit provides a friendly git-porcelain

(straight-use-package 'magit)

(setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1)

(provide 'init-magit)
