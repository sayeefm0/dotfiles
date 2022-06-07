(use-package projectile
  :straight t
  :bind
  (:map usr-map
        ("f i p" . projectile-find-file)
        ("b i p" . projectile-switch-to-buffer)))

(provide 'projectile-setup)
