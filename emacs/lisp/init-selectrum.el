;;; init-selectrum.el --- install and configure selectrum
;;; Commentary:
;; Selectrum is an incremental narrowing framework a-la helm, ivy, etc.

(straight-use-package 'prescient)
(straight-use-package 'selectrum)
(straight-use-package 'selectrum-prescient)

(selectrum-mode +1)
(selectrum-prescient-mode +1)

(provide 'init-selectrum)
