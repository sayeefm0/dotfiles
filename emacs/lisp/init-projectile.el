;;; init-projectile.el --- project searching
;;; Commentary:
;;; Code:

(use-package projectile
  :straight t
  :bind
  ("C-c C-p f" . projectile-find-file)
  ("C-c C-p b" . projectile-switch-to-buffer)
  ("C-c C-p p" . projectile-switch-project)
  ("C-c C-p a" . projectile-add-known-project))

(provide 'init-projectile)

;;; init-projectile.el ends here
