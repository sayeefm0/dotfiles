;;; init-ace.el --- configuration for all ace-<> modes
;;; Commentary:
;; ace-<> modes, like ace-window, provide faster ways of switching between windows, buffers, etc. by
;; displaying short key-strings to select, similar to how avy works
;;; Code:

(use-package ace-window
  :straight t
  :bind
  ("C-x o" . ace-window)
  :config
  (set-face-attribute 'aw-leading-char-face nil
                      :foreground "white"
                      :weight 'bold)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(provide 'init-ace)

;;; init-ace.el ends here
