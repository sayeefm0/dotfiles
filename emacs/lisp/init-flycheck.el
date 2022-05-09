;;; init-ace.el --- flycheck; syntax highlighting with pluggable backends
;;; Commentary:
;; language-specific flycheck configurations found in their respective init-<lang> file

(straight-use-package 'flycheck)

(define-key prog-mode-map (kbd "C-c C-e C-e") 'flycheck-explain-error-at-point)
(define-key prog-mode-map (kbd "C-c C-e C-l") 'flycheck-list-errors)
(define-key prog-mode-map (kbd "C-c C-e C-n") 'flycheck-next-error)
(define-key prog-mode-map (kbd "C-c C-e C-p") 'flycheck-previous-error)

(setq flycheck-emacs-lisp-load-path 'inherit)
(setq flycheck-highlighting-mode 'lines)
(setq flycheck-indication-mode 'left-margin)

;; taken from the flycheck documentation for a 1/3 screen height buffer opened below
(add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
              (display-buffer-reuse-window
               display-buffer-in-side-window)
              (side            . bottom)
              (reusable-frames . visible)
              (window-height   . 0.33)))

(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'init-flycheck)
