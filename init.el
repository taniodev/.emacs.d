
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'config-emacspeak)
(require 'config-emacs)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


;; Carrega as configurações de teclado
(require 'config-teclado)

;; Configurações do company-mode
(require 'config-company)

;; Configurações do Dired
(require 'config-dired)

;; Carrega as configurações do Elpy
;; (require 'config-elpy)

;; Carrega as configurações do Magit
(require 'config-magit)

;; Carrega as configurações para edição de yaml
(require 'config-yaml)


