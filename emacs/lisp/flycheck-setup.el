(use-package flycheck
  :straight t
  :bind
  (:map usr-map
        ("e l" . flycheck-list-errors)
        ("e n" . flycheck-next-error)
        ("e p" . flycheck-previous-error))
  :init
  ;; 1/3 height error list window at the bottom of the screen
  (add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
              (display-buffer-reuse-window
               display-buffer-in-side-window)
              (side            . bottom)
              (reusable-frames . visible)
              (window-height   . 0.33)))
  :config
  (global-flycheck-mode 1))

(provide 'flycheck-setup)
