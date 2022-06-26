(use-package fzf
  :bind
  (:map usr-map
        ("C-f" . fzf-git-files)
        ("C-b" . fzf-switch-buffer)))

(provide 'fzf)
