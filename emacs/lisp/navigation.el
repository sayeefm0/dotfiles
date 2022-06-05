(use-package ace-window
  :straight t
  :bind
  ("C-x o" . ace-window)
  :config
  (set-face-attribute 'aw-leading-char-face nil
                      :foreground "white"
                      :weight 'bold)
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(use-package avy
  :straight t
  :bind (:map vim-like
              ("l" . avy-goto-line)
              ("s" . avy-goto-char)))

(use-package projectile
  :straight t
  :bind
  ("C-c C-p f" . projectile-find-file)
  ("C-c C-p b" . projectile-switch-to-buffer)
  ("C-c C-p p" . projectile-switch-project)
  ("C-c C-p a" . projectile-add-known-project))

(use-package treemacs
  :straight t
  :bind
  ("C-c [" . treemacs))

(use-package which-key
  :straight t
  :config
  (which-key-mode))

(provide 'navigation)
