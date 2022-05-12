;;; init.el --- configuration file
;;; Commentary:
;; This file contains configuration for Emacs builtins.
;; Additional package configuration can be found in Lisp 'init-<package>.el' or 'lisp/init-<lang>.el' for
;; language support requiring multiple packages.
;;; Code:

;; configuration modules
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; variables
(setq-default indent-tabs-mode nil
              tab-width 2)
(setq backup-directory-alist `(("." . "~/dotfiles/emacs/backup"))
      tab-always-indent 'complete)    ; if already indented, complete thing at point


;; default modes
(global-display-line-numbers-mode 1)
(hl-line-mode 1)
(menu-bar-mode -1)

;; keymap for vim-like movements
(defvar vim-like)
(define-prefix-command 'vim-like)
(global-set-key "\C-d" vim-like)

(define-key vim-like (kbd "C-f") 'zap-to-char)
(define-key vim-like (kbd "C-t") 'zap-up-to-char)
(define-key vim-like (kbd "C-d") 'delete-char)
(define-key vim-like (kbd "C-o")  #'(lambda () (interactive)(move-end-of-line 1)(newline)))
(define-key vim-like (kbd "C-w") #'(lambda () (interactive) (forward-word)(backward-word)(kill-word 1)))

;; load package configurations
(require 'init-straight)       ; this has to be first
(require 'init-use-package)    ; this has to be after straight, but before everything else

(require 'init-ace)
(require 'init-avy)
(require 'init-company)
(require 'init-flycheck)
(require 'init-magit)
(require 'init-markdown)
(require 'init-projectile)
(require 'init-selectrum)
(require 'init-theme)
(require 'init-which-key)
(require 'init-yaml)

(require 'init-go-lang)

(provide 'init)

;;; init.el ends here
