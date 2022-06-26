(use-package avy
  :bind
  (:map usr-map
        ("C-l" . avy-goto-line)
        ("C-j" . avy-goto-char)
        ("C-w" . avy-goto-word-1)
        ("C-d" . avy-kill-whole-line)
        ("C-k" . avy-kill-region)))

(provide 'avy)
