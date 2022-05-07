;;; init-company.el --- install and configure company
;;; Commentary:
;; Company provides completion with pluggable back-ends

(straight-use-package 'company)

(add-hook 'after-init-hook 'global-company-mode)
;(add-to-list 'completion-styles 'initials t)

(provide 'init-company)
