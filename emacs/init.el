;;; init.el --- emacs configuration file
;;; Commentary:
;; This file only contains configuration for builtin Emacs functionality, including:
;; - defining keymaps
;; - bindings for builtin functions
;;
;; Configuration for additional packages can be found in lisp/init-<package>.el or lisp/init-<feature>.el for
;; single feature functionality (e.g. rust-lang support) that requires coordination across multiple packages

;; modular configuration files are in lisp/

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

;; keybinds for default functions
(defvar vim-like)
(define-prefix-command 'vim-like)    ; custom keymap for bindings i miss from vim
(global-set-key "\C-d" vim-like)

(define-key vim-like "f" 'zap-to-char)
(define-key vim-like "t" 'zap-up-to-char)
(define-key vim-like (kbd "C-d") 'delete-char)
(define-key vim-like (kbd "C-o")  #'(lambda () (interactive)(move-end-of-line 1)(newline)))
(define-key vim-like "o"  #'(lambda () (interactive)(move-end-of-line 0)(newline)))
(define-key vim-like (kbd "c i w") '(lambda () (interactive) (forward-word)(backward-word)(kill-word 1)))

;; load additional configuration files

(require 'init-straight)    ; this has to be first

(require 'init-ace)
(require 'init-avy)
(require 'init-company)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-projectile)
(require 'init-selectrum)
(require 'init-theme)
(require 'init-yaml)

(provide 'init)
;;; init.el ends here
