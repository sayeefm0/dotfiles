(defun load-package-mgmt()
  ;; this is a function to keep driving code visible
  ;; call to load-package-mgmt near end of file
  (install-straight)
  (straight-use-package 'use-package)
  (provide 'package-mgmt))

(defun install-straight()
  ;; install straight.el - replacement for package.el
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
    (load bootstrap-file nil 'nomessage)))

(load-package-mgmt)