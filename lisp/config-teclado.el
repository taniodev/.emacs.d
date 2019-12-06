;; Configurações de teclado


;; Número correspondente a tecla ALT-GR do teclado (keycode)
(setq altgr-keycode "108")

(defun altgr-ctrl()
  "Faz a tecla ALT-GR funcionar como CTRL"
  (interactive)
  (sleep-for 0 60)
  (message (shell-command-to-string
    (concat
      "xmodmap -e 'keycode " altgr-keycode " = Control_R' && xmodmap -e 'add Control = Control_R'")))
)

(defun ctrl-altgr ()
  "Faz a tecla ALT-GR voltar ao normal"
  (interactive)
  (sleep-for 0 60)
  (message (shell-command-to-string
    (concat
      "xmodmap -e 'clear Control' && xmodmap -e 'keycode " altgr-keycode " = ISO_Level3_Shift' && xmodmap -e 'add Control = Control_L Control_R'")))
)


;; Atalhos de tecla personalizados
;; M-F11 para ativar Alt-GR como CTRL
(global-set-key (kbd "M-<f11>") 'altgr-ctrl)

;; M-F12 para voltar Alt-GR ao normal
(global-set-key (kbd "M-<f12>") 'ctrl-altgr)

;; C-TAB para chamar a sugestão de código no elpy
(global-set-key (kbd "C-<tab>") 'elpy-company-backend)


(provide 'config-teclado)

