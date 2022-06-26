(defun tmux-run (command)
  ;; Run COMMAND in other tmux pane
  (interactive "s$ ")
  (call-process "tmux" nil nil nil "send-keys" "-t!" command "Enter"))

(defun tmux-repeat()
  (interactive)
  (tmux-run "!!"))

(define-key usr-map (kbd ";") #'tmux-run)
(define-key usr-map (kbd "'") #'tmux-repeat)

(provide 'tmux)
