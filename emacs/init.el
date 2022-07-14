(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'package-mgmt)
(require 'benchmarking)

(require 'keymaps)
(require 'builtin)
(require 'tmux)

;; external packages
(require 'avy)
(require 'company)
(require 'dim-other-buffers)
(require 'expand-region)
(require 'flycheck)
(require 'folding)
(require 'fzf)
(require 'magit)
(require 'selectrum)
(require 'switch-window)
(require 'theme)
(require 'tree-sitter)
(require 'writeroom)
(require 'ws-butler)

;; programming language support
(require 'lsp)
(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))
(require 'bash)
(require 'go)
(require 'lisp)
(require 'markdown)
(require 'yaml)

(provide 'init)
