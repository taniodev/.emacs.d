;; Configurações do Elpy - Módulo para programação em Python

(add-hook 'elpy-mode-hook
  (lambda()

    ;; Atalhos de teclado
    ;; C-TAB para chamar a sugestão de código no elpy
    (define-key elpy-mode-map (kbd "C-<tab>") 'elpy-company-backend)


    ;; Adiciona o diretório do Pyenv contendo o interpretador Python no path do Emacs
    (add-to-list 'exec-path "~/.pyenv/shims")

    ;; Utiliza o ambiente global do interpretador definido com o pyenv
    (setq elpy-rpc-virtualenv-path "~/.pyenv/versions")

))


;; Inicializa o elpy automaticamente
(elpy-enable)


(provide 'config-elpy)

