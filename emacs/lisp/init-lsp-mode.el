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
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration))

(use-package lsp-ui
  :straight t
  :after lsp-mode
  :bind
  (:map lsp-ui-mode-map
        ("C-c C-l d" . lsp-ui-doc-glance))
  :config
  (setq lsp-ui-sideline-show-diagnostics t
        lsp-ui-sideline-show-code-actions t
        lsp-ui-sideline-delay 0.5))

(provide 'init-lsp-mode)

;;; init-lsp-mode.el ends here
