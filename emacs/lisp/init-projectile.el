;;; init-projectile --- install and configure projectile
;;; Commentary:
;; Projectile provides "smart" project file searching, grepping, replace, etc.

(straight-use-package 'projectile)

(global-set-key (kbd "C-c p f") 'projectile-find-file)

(provide 'init-projectile)
