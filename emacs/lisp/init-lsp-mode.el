;;; init-lsp-mode.el --- language server procotol (lsp) config
;;; Commentary:
;; This file configures generic lsp settings.
;; Language-specific configuration is found in init-<lang>.el
;;; Code:

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
  :after lsp-mode
  :bind
  (:map lsp-ui-mode-map
        ("C-c C-l d" . lsp-ui-doc-glance)))

(provide 'init-lsp-mode)

;;; init-lsp-mode.el ends here
