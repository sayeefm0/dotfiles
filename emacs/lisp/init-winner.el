;;; init-winner.el --- winner-mode configuration
;;; Commentary:
;; winner mode allows undo/redo-ing window configurations (buffer splits)
;;; Code:

(add-hook 'after-init-hook 'winner-mode)
(global-set-key (kbd "C-c C-w C-u") 'winner-undo)
(global-set-key (kbd "C-c C-w C-r") 'winner-redo)

(provide 'init-winner)

;;; init-winner.el ends here
