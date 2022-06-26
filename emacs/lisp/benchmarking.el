(defun startup-time()
  (message
   "startup time: %s"
   (format
    "%3.f ms"
    (* (float-time
        (time-subtract after-init-time before-init-time)) 1000))))

(add-hook 'emacs-startup-hook #'startup-time)

(use-package benchmark-init
  :config
  (add-hook 'after-init-hook #'benchmark-init/deactivate))

(provide 'benchmarking)
