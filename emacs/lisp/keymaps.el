(define-prefix-command 'usr-map)
(define-prefix-command 'usr-map/find)
(define-prefix-command 'usr-map/toggle)

(global-set-key "\C-d" usr-map)
(define-key usr-map (kbd "f") usr-map/find)
(define-key usr-map (kbd "t") usr-map/toggle)
(provide 'keymaps)
