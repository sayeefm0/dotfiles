;;; init-go-lang.el --- golang config
;;; Commentary:
;;; Code:

(defun go-on-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))

;; TODO override lsp doc bind for godoc
(use-package go-mode
  :straight t
  :bind
  (:map go-mode-map
        ("C-c C-l g" . godoc-at-point))
  :config
  (add-hook 'go-mode-hook #'go-on-save-hooks)
  (add-hook 'go-mode-hook #'lsp-deferred))

(provide 'init-go-lang)

;;; init-go-lang.el ends here
