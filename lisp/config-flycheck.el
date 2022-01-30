;; Verificação de sintaxe

(use-package flycheck
  :ensure t
  :hook (python-mode . flycheck-mode)

  :bind
  ;; F8 - Ir para o próximo erro ou aviso
  ("<f8>" . flycheck-next-error)
  ;; Shift+F8 - Ir para o erro ou aviso anterior
  ("S-<f8>" . flycheck-previous-error)
)

(provide 'config-flycheck)
