(use-package auto-dim-other-buffers
  :config
  (auto-dim-other-buffers-mode 1)
  (set-face-attribute 'auto-dim-other-buffers-face nil
                      :background "#21242c"))

(provide 'dim-other-buffers)
