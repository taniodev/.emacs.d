;; Configurações para desenvolvimento em Python

;; Atalhos de tecla
(add-hook 'python-mode-hook '(lambda ()
  ;; Ativar o ambiente virtual
  (define-key python-mode-map (kbd "C-S-a v") 'pyvenv-activate)
))


(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
    (require 'lsp-pyright)
    (lsp-deferred)))
)

(use-package pyvenv
  :ensure t
  :hook (python-mode . pyvenv-mode)
)

(provide 'config-python)
