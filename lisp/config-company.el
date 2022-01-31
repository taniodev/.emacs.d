;; Configurações do módulo de preenchimento Company (para obter autocomplete)

(use-package company
  :ensure t
  :custom
  (company-idle-delay 0)
  (company-minimum-prefix-length 3)

  ;; Control+TAB - Chamar o preenchimento manualmente
  :bind ("C-<tab>" . company-complete)
)

(provide 'config-company)
