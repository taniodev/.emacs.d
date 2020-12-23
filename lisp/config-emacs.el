;; Este arquivo contém configurações gerais do Emacs

;; Carrega um tema
(load-theme 'tango-dark t)

;; Desabilita a exibição da mensagem de boas-vindas
(setq inhibit-startup-message t)

;; Remove alguns elementos da tela
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Desabilita a criação dos arquivos de backup
(setq make-backup-files nil)

;; Permite responder confirmações digitando Y ou N
(fset 'yes-or-no-p 'y-or-n-p)

;; Completa o fechamento de tags automaticamente: ), ], }, ", etc.
(electric-pair-mode 1)


;; Atalhos de teclado
;; Alt+HOME - Pular a indentação no início da linha
(global-set-key (kbd "M-<home>") 'back-to-indentation)

;; Ctrl+Shift+s - Salvar o buffer aberto
(global-set-key (kbd "C-S-s") 'save-buffer)

;; Ctrl+Shift+x - Recortar
(global-set-key (kbd "C-S-x") 'kill-region)

;; Ctrl+Shift+c - Copiar
(global-set-key (kbd "C-S-c") 'kill-ring-save)

;; Ctrl+Shift+v - Colar
(global-set-key (kbd "C-S-v") 'yank)

;; F5 - Compilar
(global-set-key (kbd "<f5>") 'compile)

;; Ctrl+Shift+F5 - Recompilar
(global-set-key (kbd "C-S-<f5>") 'recompile)

;; Shift+F5 - Parar o processo de compilação
(global-set-key (kbd "S-<f5>") 'kill-compilation)


(provide 'config-emacs)

