;; Configurações do emacspeak


(add-hook 'emacspeak-startup-hook
  (lambda()
    (dtk-set-language "pt-br")
    (dtk-set-rate 410 1)
))


;; Atalhos de teclado
;; C-F4 para fechar o buffer atual sem perguntar
(global-set-key (kbd "C-<f4>") 'emacspeak-kill-buffer-quietly)


(load-file "/opt/emacspeak/lisp/emacspeak-setup.el")
(provide 'config-emacspeak)

