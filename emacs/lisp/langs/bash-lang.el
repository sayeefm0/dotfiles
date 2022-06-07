(add-to-list 'auto-mode-alist '("bash_profile" . sh-mode))
(add-hook 'sh-mode-hook #'lsp-deferred)

(provide 'bash-lang)
