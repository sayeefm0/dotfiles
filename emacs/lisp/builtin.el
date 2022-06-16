;; variables

(setq-default indent-tabs-mode nil
              tab-width 2)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024))

(set-face-foreground 'vertical-border "#3b4151")
(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?│))

(setq-default mode-line-format
      '(
        (:eval
         (propertize "  %b  " 'face
                     (if (buffer-modified-p)
                         '(:background "#BF616A" :foreground "white")
                       '(:background "#8FBCBB" :foreground "black"))))
        "\t"
        (:propertize (vc-mode vc-mode) face (:weight normal))))

;; modes

(electric-pair-mode 1)
(menu-bar-mode -1)
(winner-mode)

 ;; keybinds

(defun tmux-run (command)
  (interactive "s$ ")
  (call-process "tmux" nil nil nil "send-keys" "-t!" command "Enter"))
(defun tmux-run-prev()
  (interactive)
  (tmux-run "!!"))
(define-key usr-map (kbd ";") #'tmux-run)
(define-key usr-map (kbd "'") #'tmux-run-prev)

(defun kill-other-buffers ()
     (interactive)
     (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))
(define-key usr-map (kbd "1") 'kill-other-buffers)

(defun kill-word-at-point ()
  (let ((bounds (bounds-of-thing-at-point 'word)))
    (if bounds
        (kill-region (car bounds) (cdr bounds)))))
(define-key usr-map (kbd "w") 'kill-word-at-point)

(define-key usr-map (kbd "m s") 'point-to-register)
(define-key usr-map (kbd "m p") 'jump-to-register)
(define-key usr-map (kbd "u") 'winner-undo)
(define-key usr-map (kbd "k") (lambda() (interactive) (kill-buffer (current-buffer))))

(provide 'builtin)
