(use-package company
  :straight t
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.0)
  (add-hook 'after-init-hook 'global-company-mode))

(use-package prescient
  :straight t)

(use-package selectrum
  :straight t
  :config
  (selectrum-mode +1))

(use-package selectrum-prescient
  :after (prescient selectrum)
  :straight t
  :config
  (selectrum-prescient-mode +1))

(provide 'completion)
