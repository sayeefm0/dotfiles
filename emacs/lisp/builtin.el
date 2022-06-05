;; variables

(setq-default indent-tabs-mode nil
              tab-width 2)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      fill-column 80
      gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024)
      tab-always-indent 'complete) ; indent or complete

;; modes

(electric-pair-mode 1)
(global-display-fill-column-indicator-mode 1)
(global-display-line-numbers-mode 1)
(menu-bar-mode -1)
(winner-mode 1)

;; keymaps & binds

(define-prefix-command 'vim-like)
(global-set-key "\C-d" vim-like)

(provide 'builtin)
