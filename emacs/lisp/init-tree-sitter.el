;;; init-tree-sitter.el --- tree-sitter based syntax highlighting
;;; Commentary:
;;; Code:

(use-package tree-sitter
  :straight t
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :straight t
  :after tree-sitter)

(provide 'init-tree-sitter)

;;; init-tree-sitter.el ends here
