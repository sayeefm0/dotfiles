(use-package lsp-mode
  :bind
  (:map usr-map
        ("l a" . lsp-execute-code-action)
        ("l r" . lsp-rename))
  :config
  (setq lsp-headerline-breadcrumb-enable nil)
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t))))

(provide 'lsp)
