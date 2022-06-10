(use-package projectile
  :straight t
  :bind
  (:map usr-map
        ("f i p" . projectile-find-file)
        ("b i p" . projectile-switch-to-buffer)
        ("s t p" . projectile-switch-project)
        ("a t p" . projectile-add-known-project)))

(provide 'projectile-setup)
