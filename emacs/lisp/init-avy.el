;;; init-avy.el --- install and configure avy
;;; Commentary
;; Avy provides cursor motions similar to vim-sneak or nvim-lightspeed

(straight-use-package 'avy)

(define-key vim-like (kbd "C-l") 'avy-goto-line)
(define-key vim-like (kbd "C-s") 'avy-goto-char)

(provide 'init-avy)
