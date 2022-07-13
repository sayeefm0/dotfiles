(defun frame-local-load-theme (frame)
  ;; Emacsclient compatible call to load-theme
  (select-frame frame)
  (load-theme-with-mods))

(defun load-theme-with-mods()
  (load-theme 'nord t)
  (let* ((nord00 "#292d38")
         (nord0 "#2e3440")
         (nord7 "#8fbcbb"))

    (set-face-foreground 'vertical-border "black")
    (set-face-attribute 'mode-line nil
                        :background nord00
                        :foreground nord7)
    (set-face-attribute 'mode-line-inactive nil
                        :background nord00
                        :foreground nord0)))

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
