(use-package org-roam
  :bind
  (:map usr-map
        ("t r b" . org-roam-buffer-toggle)
        ("f r n" . org-roam-node-find)
        ("i r n" . org-roam-node-insert))
  :config
 (setq org-roam-directory "~/org"
       org-return-follows-link t)
 (org-roam-db-autosync-mode))

(provide 'all-org)
