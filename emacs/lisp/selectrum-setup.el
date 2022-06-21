(use-package prescient)

(use-package selectrum
  :config
  (selectrum-mode +1))

(use-package selectrum-prescient
  :after (prescient selectrum)
  :config
  (selectrum-prescient-mode +1))

(provide 'selectrum-setup)
