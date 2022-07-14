(use-package fzf
  :bind
  (:map usr-map
        ("f i p" . fzf-git-files)
        ("g m" . fzf-grep-dwim))
  :config
  (setq fzf/grep-cmd "rg --no-heading -H"))

(provide 'fzf)
