(use-package switch-window
  :bind
  ("C-x o" . switch-window)
  :config
  (setq switch-window-shortcut-style 'qwerty
        switch-window-shortcut-appearance 'asciiart))

(provide 'switch-window)
