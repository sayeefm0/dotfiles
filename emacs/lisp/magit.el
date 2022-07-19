(use-package magit
  :demand t
  :bind
  (:map magit-status-mode-map
        ("TAB" . magit-section-cycle))
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))

(provide 'magit)
