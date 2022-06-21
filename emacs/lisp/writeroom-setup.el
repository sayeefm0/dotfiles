(use-package writeroom-mode
  :hook (prog-mode text-mode org-mode)
  :bind
  (:map usr-map/view
        ("w" . writeroom-mode))
  :config
  (setq writeroom-maximize-window nil))

(provide 'writeroom-setup)
