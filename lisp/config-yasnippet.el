;; Snippets de código

(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all)
  :hook
  (python-mode . yas-minor-mode)
  (html-mode . yas-minor-mode)
)

(use-package yasnippet-snippets
  :ensure t)

(provide 'config-yasnippet)
