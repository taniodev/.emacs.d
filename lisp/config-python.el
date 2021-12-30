;; Configurações para desenvolvimento em Python


(add-hook 'python-mode-hook '(lambda ()
  ;; Desativa o anúncio automático do buffer Messages
  (setq-local emacspeak-speak-messages nil)

  ;; Atalhos de tecla
  ;; Rodar todos os testes
  (define-key python-mode-map (kbd "C-S-a r") 'python-pytest)

  ;; Rodar os testes que correspondem ao buffer atual
  (define-key python-mode-map (kbd "C-S-a f") 'python-pytest-file-dwim)

  ;; Rodar uma função de teste que corresponde à posição do cursor
  (define-key python-mode-map (kbd "C-S-a t") 'python-pytest-function-dwim)

  ;; Repetir o último comando utilizado para a execução dos testes
  (define-key python-mode-map (kbd "C-S-a C-S-r") 'python-pytest-repeat)

  ;; Abrir o buffer que contém o log de execução do pytest
  (define-key python-mode-map (kbd "C-S-a e") '(lambda ()
    (interactive)
    (switch-to-buffer python-pytest-buffer-name)
    (emacspeak-auditory-icon 'select-object)
    (emacspeak-speak-mode-line)))
))


(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
    (require 'lsp-pyright)
    (lsp-deferred)))
)

(use-package auto-virtualenv
  ;; Possibilita a ativação automática do ambiente virtual (.venv).
  :ensure t
  :hook (python-mode . auto-virtualenv-set-virtualenv)
)

(use-package python-pytest
  :ensure t
  :custom
  (python-pytest-project-name-in-buffer-name nil)
)

(add-hook 'python-pytest-finished-hook '(lambda ()
  "Utilize o Emacspeak para anunciar o resultado do processo de execução dos testes."
  (previous-line)   ;; Ao concluir o processo, o cursor fica posicionado na última linha do buffer (em branco).
  (emacspeak-speak-line)
  (emacspeak-auditory-icon 'task-done)))

(provide 'config-python)
