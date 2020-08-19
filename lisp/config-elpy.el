;; Configurações do Elpy - Módulo para programação em Python

(add-hook 'elpy-mode-hook
  (lambda()

    ;; Define o Pytest como test runner padrão
    (setq elpy-test-runner 'elpy-test-pytest-runner)


    ;; Atalhos de teclado
    ;; Ctrl+TAB - Para chamar a sugestão de código no elpy
    (define-key elpy-mode-map (kbd "C-<tab>") 'elpy-company-backend)

    ;; Ctrl+Shift+a r - Para rodar os testes
    (define-key elpy-mode-map (kbd "C-S-a r") 'elpy-test)

    ;; F8 - Ir para o próximo erro ou aviso
    (define-key elpy-mode-map (kbd "<f8>") 'elpy-flymake-next-error)

    ;; Shift+F8 - Ir para o erro ou aviso anterior
    (define-key elpy-mode-map (kbd "S-<f8>") 'elpy-flymake-previous-error)

))


;; Usar o shell para obter docstrings e conclusões
(setq elpy-get-info-from-shell t)

;; Seleciona o jedi
(setq elpy-rpc-backend "jedi")

;; Inicializa o elpy automaticamente
(elpy-enable)


(provide 'config-elpy)

