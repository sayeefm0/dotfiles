;; variables

(setq-default indent-tabs-mode nil
              tab-width 2)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      fill-column 80
      gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024)
      tab-always-indent 'complete) ; indent or complete

;; modes

(electric-pair-mode 1)
(global-display-fill-column-indicator-mode 1)
(global-display-line-numbers-mode 1)
(menu-bar-mode -1)
(winner-mode)

 ;; keybinds

(defun tmux-run (command)
  (interactive "s$ ")
  (call-process "tmux" nil nil nil "send-keys" "-t!" command "Enter"))
(define-key usr-map (kbd ";") #'tmux-run)
(define-key usr-map (kbd "'") (lambda() (interactive) (tmux-run "!!")))

(define-key usr-map (kbd "u") 'winner-undo)

(provide 'builtin)
