(defun frame-local-load-theme (frame)
  ;; Emacsclient compatible call to load-theme
  (select-frame frame)
  (load-theme-with-mods))

(defun load-theme-with-mods()
  (load-theme 'nord t)
  (set-face-foreground 'vertical-border "black"))

;; continuous vertical line for window separation
(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?│))

(use-package nord-theme
  :config
  (if (daemonp)
      (add-hook 'after-make-frame-functions #'frame-local-load-theme)
    (load-theme-with-mods)))

(provide 'theme)
