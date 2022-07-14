(add-hook 'prog-mode-hook
          (lambda ()
            (unless (derived-mode-p 'mhtml-mode)
              (hs-minor-mode 1))))
(define-key usr-map (kbd "s l c") #'hs-hide-all)
(define-key usr-map (kbd "s m c") #'hs-show-all)
(define-key usr-map (kbd "s c m") #'hs-toggle-hiding)

(provide 'folding)
