;; Este módulo configura a instalação automática de pacotes
;; Os pacotes ausentes são instalados automaticamente ao iniciar

;; Lista de pacotes que serão instalados
(setq lista-de-pacotes
  '(elpy)
)


(unless package-archive-contents
  (package-refresh-contents))

;; Instala os pacotes ausentes
(dolist (pacote lista-de-pacotes)
  (unless (package-installed-p pacote)
    (package-install pacote)))


(provide 'instalacao-automatica)

