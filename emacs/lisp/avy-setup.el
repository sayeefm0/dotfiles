(use-package avy
  :straight t
  :bind
  (:map usr-map
        ("C-l" . avy-goto-line)
        ("C-w" . avy-goto-word-1)
        ("C-d" . avy-kill-whole-line)
        ("C-k" . avy-kill-region)
        ("C-c" . avy-goto-char)))

(use-package avy-zap
  :straight t
  :bind
  (:map usr-map
        ("t" . avy-zap-up-to-char))
  :config
  (setq avy-zap-forward-only t))

(provide 'avy-setup)
