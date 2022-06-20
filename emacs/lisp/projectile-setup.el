(use-package projectile
  :straight t
  :bind
  (:map usr-map
        ("f i p" . projectile-find-file)
        ("b i p" . projectile-switch-to-buffer)
        ("s t p" . projectile-switch-project)
        ("a t p" . projectile-add-known-project))
  :config
  (setq projectile-current-project-on-switch 'move-to-end))

(provide 'projectile-setup)
