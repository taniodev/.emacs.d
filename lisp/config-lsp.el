;; Comunicação com servidores de linguagem

(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :custom
  (lsp-disabled-clients '((python-mode . pyls)))
  (lsp-signature-auto-activate nil)
  (lsp-keymap-prefix "M-l")

  :hook (prog-mode . lsp-deferred)
)

(provide 'config-lsp)
