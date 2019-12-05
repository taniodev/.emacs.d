;; Este arquivo contém configurações gerais do Emacs

;; Desabilita a exibição da mensagem de boas-vindas
(setq inhibit-startup-message t)

;; Desabilita a criação dos arquivos de backup
(setq make-backup-files nil)

;; Permite responder confirmações digitando Y ou N
(fset 'yes-or-no-p 'y-or-n-p)

;; Completa o fechamento de tags automaticamente: ), ], }, ", etc.
(electric-pair-mode 1)


(provide 'config-emacs)

