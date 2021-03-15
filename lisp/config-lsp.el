
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :custom (lsp-disabled-clients '((python-mode . pyls)))
  :hook (python-mode . lsp-deferred)
)

(provide 'config-lsp)
