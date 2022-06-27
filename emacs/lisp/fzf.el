(use-package fzf
  :bind
  (:map usr-map
        ("C-f" . fzf-git-files)))

(provide 'fzf)
