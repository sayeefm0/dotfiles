;;; init-company.el --- configuration for company completion
;;; Commentary:
;; Company provides completion with pluggable back-ends.
;;; Code:

(use-package company
  :straight t
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.2)
  (add-hook 'after-init-hook 'global-company-mode))

(provide 'init-company)

;;; init-company.el ends here
