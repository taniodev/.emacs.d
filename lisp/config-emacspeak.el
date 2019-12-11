;; Configurações do emacspeak

(add-hook 'emacspeak-startup-hook
  (lambda()

    ;; Configurações de voz
    (dtk-set-language "pt-br")
    (dtk-set-rate 410 1)


    ;; Atalhos de teclado
    ;; C-F4 para fechar o buffer atual sem perguntar
    (global-set-key (kbd "C-<f4>") 'emacspeak-kill-buffer-quietly)

    ;; C-PageUP para alternar ao buffer anterior que está aberto no mesmo modo
    (global-set-key (kbd "C-<prior>") 'emacspeak-wizards-cycle-to-previous-buffer)

    ;; C-PageDown para alternar ao próximo buffer que está aberto no mesmo modo
    (global-set-key (kbd "C-<next>") 'emacspeak-wizards-cycle-to-next-buffer)

))


(load-file "/opt/emacspeak/lisp/emacspeak-setup.el")
(provide 'config-emacspeak)

