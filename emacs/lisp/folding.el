(add-hook 'prog-mode-hook
          (lambda ()
            (unless (derived-mode-p 'mhtml-mode)
              (hs-minor-mode 1))))
(define-key usr-map (kbd "t n c") #'hs-hide-all)
(define-key usr-map (kbd "t a c") #'hs-show-all)
(define-key usr-map (kbd "t c m") #'hs-toggle-hiding)

(provide 'folding)
