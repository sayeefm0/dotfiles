;;; init-projectile.el --- projectile configuration
;;; Commentary:
;; Projectile provides "smart" project file searching, grepping, replace, etc.
;;; Code:

(use-package projectile
  :straight t
  :bind ("C-c C-p C-f" . projectile-find-file))

(provide 'init-projectile)

;;; init-projectile.el ends here
