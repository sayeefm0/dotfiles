(use-package neotree
  :bind
  (:map usr-map
        ("p t" . neotree-toggle)
        ("r p t" . neotree-find))
  :config
  (setq neo-theme 'classic))

(provide 'neotree)
