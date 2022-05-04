;; misc builtin configuration
(setq backup-directory-alist `(("." . "~/.config/emacs/backup")))
(setq-default indent-tabs-mode nil)

;; additional packages

;;;; makes sure straight package manager is available
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'avy) ;; fast cursor motions
(straight-use-package 'magit)
(straight-use-package 'nord-theme)
(straight-use-package 'prescient)
(straight-use-package 'projectile)
(straight-use-package 'selectrum) ;; autocomplete
(straight-use-package 'selectrum-prescient)
(straight-use-package 'yaml-mode)

;; default modes / appearance
(global-display-line-numbers-mode 1)
(hl-line-mode 1)
(load-theme 'nord t)
(menu-bar-mode -1)
(selectrum-mode +1)
(selectrum-prescient-mode +1)

;; keybinds

(global-set-key (kbd "C-c p f") 'projectile-find-file)

;;;; custom map for vim-like motions
(define-prefix-command 'vim-like)
(global-set-key "\C-d" vim-like)
(define-key vim-like "f" 'zap-to-char)
(define-key vim-like "l" 'avy-goto-line)
(define-key vim-like "o" '(lambda () (interactive)(move-end-of-line 1)(newline)))
(define-key vim-like "O" '(lambda () (interactive)(move-end-of-line 0)(newline)))
(define-key vim-like "s" 'avy-goto-char-2)
(define-key vim-like "t" 'zap-up-to-char)
