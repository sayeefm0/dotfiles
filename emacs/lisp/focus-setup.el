(use-package focus
  :straight t
  :hook (prog-mode . focus-mode)
  :bind
  (:map usr-map
        ("v f" . focus-mode))
  :config
  (add-to-list 'focus-mode-to-thing '(prog-mode . paragraph))
  (add-to-list 'focus-mode-to-thing '(conf-space-mode . paragraph)))

(provide 'focus-setup)
