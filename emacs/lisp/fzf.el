(use-package fzf
  :bind
  (:map usr-map
        ("f i p" . fzf-git-files)
        ("f i m" . fzf-find-file)
        ("g m" . fzf-grep-dwim))
  :config
  (setq fzf/grep-command "rg --no-heading -nH"))

(provide 'fzf)
