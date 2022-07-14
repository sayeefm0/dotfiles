(electric-pair-mode 1)
(global-hl-line-mode 1)
(winner-mode 1)
(menu-bar-mode -1)

(setq-default
 indent-tabs-mode nil
 tab-width 2)

(setq
 backup-directory-alist '(("." . "~/.emacs.d/backups"))
 gc-cons-threshold 100000000
 read-process-output-max (* 1024 1024))

(defun kill-other-buffers()
  (interactive)
  (mapc #'kill-buffer (delq (current-buffer) (buffer-list))))

(defun kill-current-buffer()
  (interactive)
  (kill-buffer (current-buffer))
  (delete-window))

(defun kill-word-at-point()
  (interactive)
  (let ((bounds (bounds-of-thing-at-point 'word)))
    (if bounds
        (kill-region (car bounds) (cdr bounds)))))

(define-key usr-map (kbd "1") #'kill-other-buffers)
(define-key usr-map (kbd "0") #'kill-current-buffer)
(define-key usr-map (kbd "k m") #'kill-word-at-point)
(define-key usr-map (kbd "p b") #'switch-to-prev-buffer)
(define-key usr-map (kbd "u l") 'winner-undo)
(define-key usr-map (kbd "r l") 'winner-redo)
(define-key usr-map (kbd "m s") 'point-to-register)
(define-key usr-map (kbd "f s") 'jump-to-register)

(provide 'builtin)
