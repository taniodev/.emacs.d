;; Snippets de código

(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all)
  :hook (prog-mode . yas-minor-mode)
)

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(provide 'config-yasnippet)
