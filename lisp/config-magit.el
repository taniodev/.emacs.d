;; Configurações do magit - Interface para o Git

(use-package magit
  :ensure t
  :config
  ;; Tamanho máximo da linha de resumo do commit
  (setq git-commit-summary-max-length 50)
  ;; Coluna a partir da qual deve fazer a quebra de linha automaticamente
  (setq git-commit-fill-column 72)
  ;; Habilita as verificações do texto antes de fazer o commit
  (setq git-commit-style-convention-checks '(non-empty-second-line overlong-summary-line))

  ;; Ctrl+Shift+g - Abrir o buffer do magit-status
  :bind ("C-S-g" . magit-status)
)


(provide 'config-magit)

