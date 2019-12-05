;; Configurações do emacspeak


(add-hook 'emacspeak-startup-hook
  (lambda()
    (dtk-set-language "pt-br")
    (dtk-set-rate 410 1)
))


(load-file "/opt/emacspeak/lisp/emacspeak-setup.el")
(provide 'config-emacspeak)

