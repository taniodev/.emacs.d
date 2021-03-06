
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

;; Configurações de debug (dap-mode)
(require 'config-dap)

;; Configurações do Dired
(require 'config-dired)

;; Carrega as configurações do Elpy
;; (require 'config-elpy)

;; Verificação de sintaxe
(require 'config-flycheck)

;; Configurações do lsp-mode
(require 'config-lsp)

;; Carrega as configurações do Magit
(require 'config-magit)

;; Navegação por níveis de indentação
(require 'config-nav-indent)

;; Trabalhar com muitos projetos
(require 'config-projectile)

;; Configurações para programação em Python
(require 'config-python)

;; Tecnologias web
(require 'config-web)

;; Carrega as configurações para edição de yaml
(require 'config-yaml)

;; Snippets
(require 'config-yasnippet)


