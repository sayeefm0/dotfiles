(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))

(defvar usr-map)
(define-prefix-command 'usr-map)
(global-set-key "\C-d" usr-map)

(require 'package-mgmt)

(require 'builtin)
(require 'theme)

;; additional package configurations
(require 'ace-window-setup)
(require 'avy-setup)
(require 'focus-setup)
(require 'projectile-setup)
(require 'treemacs-setup)
(require 'which-key-setup)
(require 'company-setup)
(require 'selectrum-setup)
(require 'flycheck-setup)
(require 'magit-setup)
(require 'tree-sitter-setup)
(require 'ws-butler-setup)

;; base lang support
(require 'lsp-setup)
(require 'dap-setup)
;; langs
(require 'bash-lang)
(require 'go-lang)
(require 'markdown-lang)
(require 'yaml-lang)

(global-hl-line-mode 1) ;; TODO: figure out what's overriding this earlier

(provide 'init)
