(defun frame-local-load-theme (frame)
  (select-frame frame)
  (load-nord-with-mods))

(defun load-nord-with-mods()
  (load-theme 'nord t)
  (set-face-foreground 'vertical-border "#2E3440")) ; nord bg color

(use-package nord-theme
  :config
  (setq nord-region-highlight 'frost)
  (if (daemonp)
      (add-hook 'after-make-frame-functions #'frame-local-load-theme)
    (load-nord-with-mods)))

(provide 'theme)
