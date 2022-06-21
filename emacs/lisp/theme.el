(defun frame-local-load-theme (frame)
  ;; Emacsclient compatible call to load-theme
  (select-frame frame)
  (load-theme-with-mods))

(defun load-theme-with-mods()
  (load-theme 'doom-wilmersdorf t)
  (set-face-foreground 'vertical-border "#282b33")
  (set-face-background 'vertical-border "#282b33"))

(use-package doom-themes
  :config
  (if (daemonp)
      (add-hook 'after-make-frame-functions #'frame-local-load-theme)
    (load-theme-with-mods)))

(provide 'theme)
