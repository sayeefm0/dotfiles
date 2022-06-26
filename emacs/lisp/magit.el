(use-package magit
  :demand t ; BUG: missing var if magit gets lazy loaded
  :bind
  (:map usr-map
        ("C-g" . magit-status))
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))

(provide 'magit)
