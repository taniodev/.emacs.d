
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'config-emacspeak)
(require 'config-emacs)


(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "https://stable.melpa.org/packages/"))


(package-initialize)

;; Instala os pacotes ausentes
(require 'instalacao-automatica)

;; Carrega as configurações de teclado
(require 'config-teclado)

;; Configurações do Dired
(require 'config-dired)

;; Carrega as configurações do Elpy
(require 'config-elpy)


