(use-package lsp-mode
  :straight t
  :bind
  (:map usr-map
        ("i i" . lsp-execute-code-action))
  :config
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t))))

(use-package lsp-ui
  :straight t
  :after lsp-mode
  :config
  (setq lsp-ui-sideline-show-hover t)
  (setq lsp-ui-sideline-show-code-actions t)
  (setq lsp-ui-sideline-show-diagnostics 'nil))

(provide 'lsp-setup)
