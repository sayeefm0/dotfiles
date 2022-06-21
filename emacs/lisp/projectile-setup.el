(use-package projectile
  :bind
  (:map usr-map
        ("f i p" . projectile-find-file)
        ("b i p" . projectile-switch-to-buffer))
  :config
  (setq projectile-current-project-on-switch 'move-to-end))

(provide 'projectile-setup)
