(use-package flycheck
  :bind
  (:map usr-map
        ("e l" . flycheck-list-errors))
  :config
  (global-flycheck-mode 1)
  (setq flycheck-check-syntax-automatically '(save))) ; default too aggressive

(provide 'flycheck)
