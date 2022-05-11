;;; init-theme --- configure appearance
;;; Commentary:
;; All appearance related configuration should go here

(straight-use-package 'nord-theme)

(setq nord-region-highlight 'frost)
(load-theme 'nord t)

(provide 'init-theme)
