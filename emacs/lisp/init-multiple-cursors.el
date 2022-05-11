;;; init-multiple-cursors --- install and configure multiple cursors mode
;;; Commentary:

(straight-use-package 'multiple-cursors)

(global-set-key (kbd "M-SPC") 'set-rectangular-region-anchor)
(global-set-key (kbd "C-c C-c C-p") 'mc/edit-lines)
(global-set-key (kbd "C-c C-c C-b") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C-c C-c C-e") 'mc/edit-ends-of-lines)

(provide 'init-multiple-cursors)
