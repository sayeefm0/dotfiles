(electric-pair-mode 1)
(global-hl-line-mode 1)
(menu-bar-mode -1)

(setq-default mode-line-format
              '("%e"
                " "
                mode-line-buffer-identification
                "  "
                vc-mode))

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

(defun notes()
  (interactive)
  (find-file-other-window "~/.brain.org"))

(define-key usr-map (kbd "1") #'kill-other-buffers)
(define-key usr-map (kbd "0") #'kill-current-buffer)
(define-key usr-map (kbd "w") #'kill-word-at-point)
(define-key usr-map (kbd "\C-c") #'delete-frame)
(define-key usr-map (kbd "p") #'switch-to-prev-buffer)
(define-key usr-map (kbd "n") #'notes)
(define-key global-map (kbd "\C-x \C-b") 'ibuffer)

(provide 'builtin)
