(use-package fzf
  :bind
  (:map usr-map
        ("C-f" . fzf-git-files)
        ("C-g" . fzf-grep-dwim))
  :config
  (setq fzf/grep-cmd "rg --no-heading -H"))

(provide 'fzf)
