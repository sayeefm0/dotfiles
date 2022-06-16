(use-package focus
  :straight t
  :hook (prog-mode . focus-mode)
  :bind
  (:map usr-map
        ("v f" . focus-mode)))

(provide 'focus-setup)
