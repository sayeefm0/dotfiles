(defun go-on-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

(use-package go-mode
  :straight t
  :config
  (add-hook 'go-mode-hook #'go-on-save-hooks)
  (add-hook 'go-mode-hook #'lsp-deferred))

(provide 'go-lang)
