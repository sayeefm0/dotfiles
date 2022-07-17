(use-package dockerfile-mode
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

(use-package docker
  :bind
  (:map usr-map/toggle
        ("d" . docker)))

(provide 'docker)
