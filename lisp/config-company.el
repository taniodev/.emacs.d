;; Configurações do módulo de preenchimento Company (para obter autocomplete)

(use-package company
  :ensure t
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 3)
)

(provide 'config-company)
