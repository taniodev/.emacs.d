;; Configurações para desenvolvimento em Python


(add-hook 'python-mode-hook '(lambda ()
  ;; Desativa o anúncio automático do buffer Messages
  (setq-local emacspeak-speak-messages nil)

  ;; Atalhos de tecla
  ;; Ativar o ambiente virtual
  (define-key python-mode-map (kbd "C-S-a v") 'pyvenv-activate)

  ;; Rodar todos os testes
  (define-key python-mode-map (kbd "C-S-a r") 'python-rodar-testes)

  ;; Rodar os testes do buffer atual
  (define-key python-mode-map (kbd "C-S-a t") 'python-rodar-testes-buffer)
))


(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
    (require 'lsp-pyright)
    (lsp-deferred)))
)

(use-package pyvenv
  :ensure t
  :hook (python-mode . pyvenv-mode)
)


;; Funções para rodar testes
(setq python-rodar-testes-cmd "pytest")
(setq python-rodar-testes-args "-s")

(defun python-rodar-testes ()
  "Rodar todos os testes"
  (interactive)
  (compile (concat python-rodar-testes-cmd " " python-rodar-testes-args))
)

(defun python-rodar-testes-buffer ()
  "Rodar todos os testes do buffer atual"
  (interactive)
  (compile (concat python-rodar-testes-cmd " " (buffer-file-name) " " python-rodar-testes-args))
)

(provide 'config-python)
