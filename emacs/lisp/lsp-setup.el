(use-package lsp-mode
  :bind
  (:map usr-map
        ("i d" . lsp-describe-thing-at-point)
        ("i a" . lsp-execute-code-action))
  :config
  (setq lsp-headerline-breadcrumb-enable nil)
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t))))

(provide 'lsp-setup)
