;; Formatador de código

(use-package format-all
  :ensure t
  :hook (prog-mode . format-all-mode)

  :config
  (define-format-all-formatter blue
    (:executable "blue")
    (:install "pip install blue")
    (:languages "Python")
    (:features)
    (:format (format-all--buffer-easy executable "-q" "-")))
)

(provide 'config-format-all)
