;; Configurações do Dired

(add-hook 'dired-mode-hook
  (lambda()

    ;; Atalhos de teclado
    ;; C-d para desmarcar um arquivo da exclusão
    (local-set-key (kbd "C-d") 'dired-unmark-backward)

    ;; Backspace para voltar ao diretório anterior
    (local-set-key (kbd "<backspace>") 'dired-up-directory)

))


;; Manda os arquivos para a lixeira quando forem excluídos com o Dired
(setq delete-by-moving-to-trash t)

;; Mostrar os diretórios primeiro
(setq dired-listing-switches "-lA --group-directories-first")


(provide 'config-dired)

