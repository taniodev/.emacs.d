;; Este arquivo contém configurações específicas dos pacotes
;; que estão instalados


;; Configurações do elpy
;; Inicializa o elpy automaticamente
(elpy-enable)

;; Adiciona o diretório do Pyenv contendo o interpretador Python no path do Emacs
(add-to-list 'exec-path "~/.pyenv/shims")

;; Utiliza o ambiente global do interpretador definido com o pyenv
(setq elpy-rpc-virtualenv-path "~/.pyenv/versions")


(provide 'config-pacotes)

