(use-package writeroom-mode
  :hook (prog-mode)
  :bind
  (:map usr-map/view
        ("w" . writeroom-mode)))

(provide 'writeroom-setup)
