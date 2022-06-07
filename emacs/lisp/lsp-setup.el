(use-package lsp-mode
  :straight t
  :config
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t))))

(use-package lsp-ui
  :straight t
  :after lsp-mode)

(provide 'lsp-setup)
