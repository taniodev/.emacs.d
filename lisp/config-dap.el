;; DAP - Debug Adapter Protocol

(use-package dap-mode
  :ensure t
  :after lsp-mode
  :commands dap-debug
  :config
  (require 'dap-python)
  :hook (python-mode . dap-mode)

  :bind
  ("C-<f5>" . dap-debug)   ;; Iniciar depuração
  ("<f5>" . dap-continue)   ;; Continuar
  ("C-S-<f5>" . dap-debug-restart)   ;; Reiniciar
  ("S-<f5>" . dap-disconnect)   ;; Parar
  ("<f9>" . dap-breakpoint-toggle)   ;; Adicionar ou remover breakpoint
  ("S-<f9>" . dap-breakpoint-delete-all)   ;; Remover todos os breakpoints
  ("<f10>" . dap-next)   ;; Avançar
  ("<f11>" . dap-step-in)   ;; Entrar
  ("S-<f11>" . dap-step-out)   ;; Sair

  ;; Atalhos com prefixo CTRL+Shift+D
  ("C-S-d t" . dap-ui-repl)   ;; Shell de depuração
  ("C-S-d s" . dap-ui-sessions)   ;; Mostrar sessões
  ("C-S-d v" . dap-ui-locals)   ;; Variáveis locais
  ("C-S-d e" . dap-ui-expressions)   ;; Mostrar expressões
  ("C-S-d b" . dap-ui-breakpoints)   ;; Mostrar breakpoints
)

(provide 'config-dap)
