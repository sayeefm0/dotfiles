(add-hook 'prog-mode-hook 'hs-minor-mode)
(add-hook 'find-file-hook #'hs-hide-all)
(define-key usr-map (kbd "f a") #'hs-hide-all)
(define-key usr-map (kbd "f n") #'hs-show-all)
(define-key usr-map (kbd "f f") #'hs-toggle-hiding)

(provide 'folding)