(use-package lsp-mode
  :bind
  (:map usr-map
        ("h c" . lsp-describe-thing-at-point)
        ("r c c" . lsp-execute-code-action)
        ("r n c" . lsp-rename)
        ("c d" . lsp-find-definition))
  :config
  (setq lsp-headerline-breadcrumb-enable nil)
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t))))

(use-package lsp-ui
  :after (lsp-mode))

(provide 'lsp)
