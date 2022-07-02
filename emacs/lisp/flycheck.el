(use-package flycheck
  :bind
  (:map usr-map
        ("e l" . flycheck-list-errors)
        ("e n" . flycheck-next-error)
        ("e p" . flycheck-previous-error))
  :config
  (global-flycheck-mode 1)
  (setq flycheck-check-syntax-automatically '(save))) ; default too aggressive

(provide 'flycheck)
