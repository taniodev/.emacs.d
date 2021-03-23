
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :custom (lsp-disabled-clients '((python-mode . pyls)))
  :config
  (setq lsp-signature-auto-activate nil)
  :hook (python-mode . lsp-deferred)
)

(provide 'config-lsp)
