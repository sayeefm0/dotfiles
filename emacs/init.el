;;; init.el --- emacs configuration file
;;; Commentary:
;; This file only contains configuration for builtin Emacs functionality, including:
;; - defining keymaps
;; - bindings for builtin functions
;;
;; Configuration for additional packages can be found in lisp/init-<package>.el or lisp/init-<feature>.el for
;; single feature functionality (e.g. rust-lang support) that requires coordination across multiple packages

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; better defaults for vars

(setq backup-directory-alist `(("." . "~/dotfiles/emacs/backup")))
(setq tab-always-indent 'complete)    ; if already indented, complete thing at point
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; default modes

(global-display-line-numbers-mode 1)
(hl-line-mode 1)
(menu-bar-mode -1)

;; custom keymap for bindings I miss from vim

(defvar vim-like)
(define-prefix-command 'vim-like)
(global-set-key "\C-d" vim-like)

(define-key vim-like (kbd "C-f") 'zap-to-char)
(define-key vim-like (kbd "C-t") 'zap-up-to-char)
(define-key vim-like (kbd "C-d") 'delete-char)
(define-key vim-like (kbd "C-o")  #'(lambda () (interactive)(move-end-of-line 1)(newline)))
(define-key vim-like (kbd "C-w") #'(lambda () (interactive) (forward-word)(backward-word)(kill-word 1)))

;; load additional configuration files

(require 'init-straight)    ; this has to be first

(require 'init-ace)
(require 'init-avy)
(require 'init-company)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-markdown)
(require 'init-multiple-cursors)
(require 'init-projectile)
(require 'init-selectrum)
(require 'init-theme)
(require 'init-which-key)
(require 'init-yaml)

(provide 'init)
;;; init.el ends here
