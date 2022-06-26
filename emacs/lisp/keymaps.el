(define-prefix-command 'usr-map)
(define-prefix-command 'usr-map/buffer)
(define-prefix-command 'usr-map/view)

(global-set-key "\C-d" usr-map)
(define-key usr-map (kbd "b") usr-map/buffer)
(define-key usr-map (kbd "v") usr-map/view)
(provide 'keymaps)
