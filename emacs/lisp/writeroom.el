(use-package writeroom-mode
  :hook (prog-mode text-mode org-mode conf-space-mode)
  :config
  (setq writeroom-maximize-window nil))

(provide 'writeroom)
