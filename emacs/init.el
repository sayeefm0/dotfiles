;;; init.el --- configuration file
;;; Commentary:
;; This file contains configuration for Emacs builtins.
;; Additional package configuration can be found in Lisp 'init-<package>.el' or 'lisp/init-<lang>.el' for
;; language support requiring multiple packages.
;;; Code:

;; additional configuration modules

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; variables

(setq-default indent-tabs-mode nil
              tab-width 2)
(setq backup-directory-alist `(("." . "~/dotfiles/emacs/backup"))
      tab-always-indent 'complete ; if already indented, complete thing at point
      gc-cons-threshold 100000000
      read-process-output-max (* 1024 1024))

;; default modes - hl-line-mode is at the end because something is overriding it

(global-display-line-numbers-mode 1)
(menu-bar-mode -1)
(winner-mode 1)


;; keymap for vim-like movements

(defvar vim-like)
(define-prefix-command 'vim-like)
(global-set-key "\C-d" vim-like)

(define-key vim-like (kbd "f") 'zap-to-char)
(define-key vim-like (kbd "t") 'zap-up-to-char)
(define-key vim-like (kbd "d") 'delete-char)
(define-key vim-like (kbd "O")  #'(lambda () (interactive)(move-end-of-line 0)(newline)))
(define-key vim-like (kbd "o")  #'(lambda () (interactive)(move-end-of-line 1)(newline)))
(define-key vim-like (kbd "w") #'(lambda () (interactive) (forward-word)(backward-word)(kill-word 1)))

;; builtin keybinds

(global-set-key (kbd "C-c C-w u") 'winner-undo)
(global-set-key (kbd "C-c C-w r") 'winner-redo)

;;  package configurations

(require 'init-straight)       ; this has to be first
(require 'init-use-package)    ; this has to be after straight, but before everything else

(require 'init-ace)
(require 'init-avy)
(require 'init-company)
(require 'init-dot-mode)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-markdown)
(require 'init-projectile)
(require 'init-selectrum)
(require 'init-sunrise)
(require 'init-theme)
(require 'init-tree-sitter)
(require 'init-which-key)
(require 'init-yaml)

(require 'init-lsp-mode)
(require 'init-bash)
(require 'init-go-lang)

(global-hl-line-mode 1)    ; TODO: figure out what's overriding this

(provide 'init)

;;; init.el ends here
