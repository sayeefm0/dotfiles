(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c C-o")
  :config
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (lsp-register-custom-settings
   '(("gopls.completeUnimported" t t))))

(use-package lsp-ui
  :straight t
  :after lsp-mode)

(use-package dap-mode
  :straight t
  :config
  (setq dap-auto-configure-features '(breakpoints))
  (add-hook 'dap-stopped-hook
            (lambda (arg) (call-interactively #'dap-hydra)))  
  (require 'dap-dlv-go)
  (dap-auto-configure-mode 1)
  :bind
  (:map lsp-mode-map
        ("C-c C-d ;" . dap-debug)
        ("C-c C-d a" . dap-breakpoint-add)
        ("C-c C-d t" . dap-breakpoint-toggle)
        ("C-c C-d d" . dap-breakpoint-delete)
        ("C-c C-d ?" . dap-hydra)))

(provide 'lsp)
