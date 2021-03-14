
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'config-emacspeak)
(require 'config-emacs)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;; Instala os pacotes ausentes
(require 'instalacao-automatica)

;; Carrega as configurações de teclado
(require 'config-teclado)

;; Configurações do Dired
(require 'config-dired)

;; Carrega as configurações do Elpy
(require 'config-elpy)

;; Carrega as configurações do Magit
(require 'config-magit)

;; Carrega as configurações para edição de yaml
(require 'config-yaml)


