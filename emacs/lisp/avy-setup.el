(use-package avy
  :bind
  (:map usr-map
        ("C-c" . avy-goto-char)
        ("C-l" . avy-goto-line)
        ("C-w" . avy-goto-word-1)
        ("C-d" . avy-kill-whole-line)
        ("C-k" . avy-kill-region)))

(provide 'avy-setup)
