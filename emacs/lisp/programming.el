(use-package flycheck
  :straight t
  :bind (:map prog-mode-map
              ("C-c C-e l" . flycheck-list-errors)
              ("C-c C-e n" . flycheck-next-error)
              ("C-c C-e p" . flycheck-previous-error))
  :init
  ;; 1/3 height error list window at the bottom of the screen
  (add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
              (display-buffer-reuse-window
               display-buffer-in-side-window)
              (side            . bottom)
              (reusable-frames . visible)
              (window-height   . 0.33)))
  :config
  (global-flycheck-mode 1))

(use-package magit
  :straight t
  :config
  (setq magit-display-buffer-function #'magit-display-buffer-fullframe-status-v1))

(use-package tree-sitter
  :straight t
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :straight t
  :after tree-sitter)

(provide 'programming)
