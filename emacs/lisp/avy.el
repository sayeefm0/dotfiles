(use-package avy
  :bind
  (:map usr-map
        ("f l" . avy-goto-line)
        ("f c" . avy-goto-char)
        ("f w" . avy-goto-word-1)
        ("k l" . avy-kill-whole-line)
        ("k r" . avy-kill-region)))

(use-package avy-zap
  :bind
  (:map usr-map
        ("k t c" . avy-zap-up-to-char)
        ("k f c" . avy-zap-to-char))) ; it's finger lickin good

(provide 'avy)
