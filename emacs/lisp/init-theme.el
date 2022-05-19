;;; init-theme.el --- configure appearance
;;; Commentary:
;;; Code:

(defun my/load-theme (frame)
  (select-frame frame)
  (load-theme 'nord t))

(use-package nord-theme
  :straight t
  :config
  (setq nord-region-highlight 'frost)
  (load-theme 'nord t)
  ;; need this to load theme properly in emacsclient frames
  (if (daemonp)
    (add-hook 'after-make-frame-functions #'my/load-theme)
  (load-theme 'nord t)))

(provide 'init-theme)

;;; init-theme.el ends here
