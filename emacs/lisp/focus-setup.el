(use-package focus
  :hook
  (prog-mode . focus-mode)
  :bind
  (:map usr-map/view
        ("f" . focus-mode)))

(provide 'focus-setup)
