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
;; HOME - Mover o cursor à indentação
(global-set-key (kbd "<home>") 'back-to-indentation)

;; Alt+HOME - Mover o cursor para o início da linha
(global-set-key (kbd "M-<home>") 'move-beginning-of-line)

;; Ctrl+Shift+s - Salvar o buffer aberto
(global-set-key (kbd "C-S-s") 'save-buffer)

;; Ctrl+Shift+x - Recortar
(global-set-key (kbd "C-S-x") 'kill-region)

;; Ctrl+Shift+c - Copiar
(global-set-key (kbd "C-S-c") 'kill-ring-save)

;; Ctrl+Shift+v - Colar
(global-set-key (kbd "C-S-v") 'yank)

;; F6 - Compilar
(global-set-key (kbd "<f6>") 'compile)

;; Ctrl+Shift+F6 - Recompilar
(global-set-key (kbd "C-S-<f6>") 'recompile)

;; Shift+F6 - Parar o processo de compilação
(global-set-key (kbd "S-<f6>") 'kill-compilation)

;; Alt+Shift+u - Converter a palavra em letras minúsculas
;; Nota: M-S-u não funcionou.
(global-unset-key (kbd "M-l"))
(global-set-key (kbd "M-U") 'downcase-word)


(provide 'config-emacs)

