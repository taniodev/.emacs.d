;; Configurações do módulo de preenchimento Company (para obter auto complete)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)

  ;; Control+TAB - Chamar o preenchimento manualmente
  :bind ("C-<tab>" . company-complete)
)

(provide 'config-company)
