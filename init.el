
(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'config-emacspeak)
(require 'config-emacs)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(require 'config-company)
(require 'config-dap)
(require 'config-flycheck)
(require 'config-lsp)
(require 'config-magit)
(require 'config-navindent)
(require 'config-projectile)
(require 'config-yasnippet)

(require 'config-python)
(require 'config-web)
(require 'config-yaml)


