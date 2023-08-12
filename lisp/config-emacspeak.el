;; Configurações do emacspeak

(defun configurar-emacspeak ()
    ;; Configurações de voz
    (dtk-set-language "pt-br:iven3")
    (dtk-set-rate 400 t)
    (dtk-toggle-split-caps t)

    ;; Tema de som
    (emacspeak-sounds-select-theme (concat emacspeak-sounds-directory "3d/"))


    ;; Atalhos de teclado
    ;; C-F4 para fechar o buffer atual sem perguntar
    (global-set-key (kbd "C-<f4>") 'emacspeak-kill-buffer-quietly)

    ;; C-PageUP para alternar ao buffer anterior que está aberto no mesmo modo
    (global-set-key (kbd "C-<prior>") 'emacspeak-wizards-cycle-to-previous-buffer)

    ;; C-PageDown para alternar ao próximo buffer que está aberto no mesmo modo
    (global-set-key (kbd "C-<next>") 'emacspeak-wizards-cycle-to-next-buffer)
)


(load-file "~/.builds/emacspeak/lisp/emacspeak-setup.el")
(with-eval-after-load "emacspeak" (configurar-emacspeak))
(provide 'config-emacspeak)

