(use-package prescient
  :straight t)

(use-package selectrum
  :straight t
  :config
  (selectrum-mode +1))

(use-package selectrum-prescient
  :after (prescient selectrum)
  :straight t
  :config
  (selectrum-prescient-mode +1))

(provide 'selectrum-setup)
