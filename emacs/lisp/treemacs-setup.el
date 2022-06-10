(use-package treemacs
  :straight t
  :bind
  (:map usr-map
        ("[" . treemacs))
  :config
  (setq treemacs-default-visit-action 'treemacs-visit-node-close-treemacs))

(provide 'treemacs-setup)
