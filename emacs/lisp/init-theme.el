;;; init-theme.el --- configure appearance
;;; Commentary:
;;; Code:

(use-package nord-theme
  :straight t
  :config
  (setq nord-region-highlight 'frost)
  (load-theme 'nord t))

(provide 'init-theme)

;;; init-theme.el ends here
