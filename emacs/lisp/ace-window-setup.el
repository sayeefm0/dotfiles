(use-package ace-window
  :straight t
  :bind
  ("C-x o" . ace-window)
  :config
  (set-face-attribute 'aw-leading-char-face nil
                      :foreground "white"
                      :weight 'bold)
  (setq aw-keys '(?d ?f ?l ?k)))

(provide 'ace-window-setup)
