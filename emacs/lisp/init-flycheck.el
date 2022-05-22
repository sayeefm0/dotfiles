;;; init-flycheck.el --- syntax highlighting with pluggable backends
;;; Commentary:
;; language-specific flycheck configurations found in their respective init-<lang> file
;;; Code:

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

(provide 'init-flycheck)

;;; init-flycheck.el ends here
