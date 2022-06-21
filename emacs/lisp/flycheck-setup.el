(use-package flycheck
  :bind
  (:map usr-map
        ("e l" . flycheck-list-errors))
  :config
  (global-flycheck-mode 1))

(provide 'flycheck-setup)
