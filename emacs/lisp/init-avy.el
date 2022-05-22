;;; init-avy.el --- install and configure avy
;;; Commentary:
;; Avy provides cursor motions similar to vim-sneak or nvim-lightspeed
;;; Code:

(use-package avy
  :straight t
  :bind (:map vim-like
              ("l" . avy-goto-line)
              ("s" . avy-goto-char)))

(provide 'init-avy)

;;; init-avy.el ends here
