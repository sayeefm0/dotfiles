(use-package flycheck
  :bind
  (:map usr-map
        ("l e" . flycheck-list-errors)
        ("f n e" . flycheck-next-error)
        ("f p e" . flycheck-previous-error))
  :config
  (global-flycheck-mode 1)
  (setq flycheck-check-syntax-automatically '(save))) ; default too aggressive

(provide 'flycheck)
