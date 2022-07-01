(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'package-mgmt)
(require 'benchmarking)

(require 'keymaps)
(require 'builtin)
(require 'tmux)

;; external packages
(require 'avy)
(require 'company)
(require 'flycheck)
(require 'fzf)
(require 'magit)
(require 'selectrum)
(require 'theme)
(require 'tree-sitter)
(require 'writeroom)
(require 'ws-butler)
(require 'folding)
(require 'expand-region)

;; programming language support
(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))
(require 'lsp)
;; langs
(require 'bash)
(require 'go)
(require 'markdown)
(require 'yaml)

(provide 'init)
