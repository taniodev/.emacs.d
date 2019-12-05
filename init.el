
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'config-emacspeak)
(require 'config-emacs)


(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "https://stable.melpa.org/packages/"))


(package-initialize)

;; Instala os pacotes ausentes
(require 'instalacao-automatica)

;; Carrega as configurações dos pacotes instalados
(require 'config-pacotes)


;; Atalhos de tecla personalizados
(global-set-key (kbd "C-<tab>") 'elpy-company-backend)


