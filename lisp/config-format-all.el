;; Formatador de código

(use-package format-all
  :ensure t
  :hook (prog-mode . format-all-mode)
)

(provide 'config-format-all)
