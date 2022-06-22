(defun frame-local-load-theme (frame)
  ;; Emacsclient compatible call to load-theme
  (select-frame frame)
  (load-theme-with-mods))

(defun load-theme-with-mods()
  (load-theme 'doom-nord t)
  (set-face-foreground 'vertical-border "black")
  (set-face-background 'vertical-border "#2e333f"))

(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?│))

(use-package doom-themes
  :config
  (if (daemonp)
      (add-hook 'after-make-frame-functions #'frame-local-load-theme)
    (load-theme-with-mods)))

(provide 'theme)
