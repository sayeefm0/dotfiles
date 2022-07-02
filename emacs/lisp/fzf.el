(use-package fzf
  :bind
  (:map usr-map
        ("C-f" . fzf-git-files)
        ("C-g" . fzf-git-grep)))

(provide 'fzf)
