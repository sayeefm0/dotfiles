(use-package dap-mode
  :config
  (setq dap-auto-configure-features '(breakpoints locals))
  (add-hook 'dap-stopped-hook
            (lambda (arg) (call-interactively #'dap-hydra)))  
  (require 'dap-dlv-go)
  (dap-auto-configure-mode 1)
  :bind
  (:map usr-map
        ("d ;" . dap-debug)
        ("d a" . dap-breakpoint-add)
        ("d d" . dap-breakpoint-delete)
        ("d t" . dap-breakpoint-toggle)
        ("d l" . dap-ui-breakpoints-list)
        ("d h" . dap-hydra)))

(provide 'dap)
