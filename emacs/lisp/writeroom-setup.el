(defun toggle-writeroom-everywhere()
  (interactive)
  (if (member 'writeroom-mode prog-mode-hook)
      (remove-hook 'prog-mode-hook 'writeroom-mode)
    (add-hook 'prog-mode-hook 'writeroom-mode)))
(use-package writeroom-mode
  :straight t
  :hook (prog-mode)
  :bind
  (:map usr-map
        ("v w" . writeroom-mode)
        ("v W" . toggle-writeroom-everywhere)))
(provide 'writeroom-setup)
