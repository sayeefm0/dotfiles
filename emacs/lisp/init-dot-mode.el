;;; init-dot-mode.el --- dot-mode emulates vim's "." command
;;; Commentary:
;;; Code:

(use-package dot-mode
  :straight t
  :bind ("C-r" . dot-mode-execute)
  :config
  (global-dot-mode t))

(provide 'init-dot-mode)

;;; init-dot-mode.el ends here
