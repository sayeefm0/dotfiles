;; variables

(setq-default indent-tabs-mode nil
              tab-width 2)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      gc-cons-threshold 100000000
      initial-buffer-choice "~/.brain.org"
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
        (:propertize (vc-mode vc-mode) face (:weight normal))
         "\t" mode-line-modes))

;; modes

(electric-pair-mode 1)
(global-display-line-numbers-mode 1)
(menu-bar-mode -1)
(winner-mode)

 ;; keybinds

(defun tmux-run (command)
  (interactive "s$ ")
  (call-process "tmux" nil nil nil "send-keys" "-t!" command "Enter"))
(define-key usr-map (kbd ";") #'tmux-run)
(define-key usr-map (kbd "'") (lambda() (interactive) (tmux-run "!!")))

(defun kill-other-buffers ()
     (interactive)
     (mapc 'kill-buffer (delq (current-buffer) (buffer-list))))
(define-key usr-map (kbd "u") 'winner-undo)
(define-key usr-map (kbd "1") 'kill-other-buffers)
(define-key usr-map (kbd "k") (lambda() (interactive) (kill-buffer (current-buffer))))
(define-key usr-map (kbd "v c") 'global-display-fill-column-indicator-mode)

(provide 'builtin)
