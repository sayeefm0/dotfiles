;;; init-ace.el --- all ace-<> mode configurations
;;; Commentary:
;; ace-<> modes, like ace-window, provide faster ways of switching between windows, buffers, etc. by
;; displaying short key-strings to select, similar to how avy works

(straight-use-package 'ace-window)

(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))    ; use homerow for window selection
(global-set-key (kbd "C-x o") 'ace-window)

(provide 'init-ace)
