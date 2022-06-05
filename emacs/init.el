(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "lisp/langs" user-emacs-directory))

(require 'package-mgmt)

(require 'builtin)
(require 'navigation)
(require 'completion)
(require 'programming)
(require 'theme)
(require 'lsp)

(require 'bash)
(require 'go)
(require 'markdown)
(require 'yaml)

(provide 'init)
