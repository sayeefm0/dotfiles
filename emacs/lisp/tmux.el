(defun tmux-run (command)
  "Run COMMAND in other tmux pane."
  (interactive "s$ ")
  (call-process "tmux" nil nil nil "send-keys" "-t!" command "Enter"))

(defun tmux-repeat ()
  "Run the previous command in other tmux pane."
  (interactive)
  (tmux-run "!!"))

(bind-key "r t c" #'tmux-run usr-map)
(bind-key "r p t c" #'tmux-repeat usr-map)

(provide 'tmux)
