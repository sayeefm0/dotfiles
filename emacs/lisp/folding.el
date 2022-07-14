(add-hook 'prog-mode-hook
          (lambda ()
            (unless (derived-mode-p 'mhtml-mode)
              (hs-minor-mode 1))))
(add-hook 'find-file-hook #'hs-hide-all)
(define-key usr-map (kbd "f a") #'hs-hide-all)
(define-key usr-map (kbd "f n") #'hs-show-all)
(define-key usr-map (kbd "f m") #'hs-toggle-hiding)

(provide 'folding)
