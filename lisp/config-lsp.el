
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :custom
  (lsp-disabled-clients '((python-mode . pyls)))
  (lsp-signature-auto-activate nil)
  (lsp-keymap-prefix "M-l")
)

(provide 'config-lsp)
