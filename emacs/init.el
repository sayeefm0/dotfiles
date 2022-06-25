(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))

(define-prefix-command 'usr-map)
(define-prefix-command 'usr-map/buffer)
(define-prefix-command 'usr-map/view)
(global-set-key "\C-d" usr-map)
(define-key usr-map (kbd "b") usr-map/buffer)
(define-key usr-map (kbd "v") usr-map/view)

(require 'package-mgmt)
(require 'benchmarking)
(require 'builtin)

;; additional package configurations
(require 'avy-setup)
(require 'focus-setup)
(require 'writeroom-setup)
(require 'projectile-setup)
(require 'which-key-setup)
(require 'company-setup)
(require 'selectrum-setup)
(require 'flycheck-setup)
(require 'magit-setup)
(require 'tree-sitter-setup)
(require 'ws-butler-setup)

(require 'theme)

;; base lang support
(require 'lsp-setup)
(require 'dap-setup)
;; langs
(require 'bash-lang)
(require 'go-lang)
(require 'markdown-lang)
(require 'yaml-lang)

(global-hl-line-mode 1)

(provide 'init)
