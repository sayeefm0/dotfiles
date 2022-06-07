(use-package company
  :straight t
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.1)
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'company-setup)
