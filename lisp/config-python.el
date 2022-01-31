;; Configurações para desenvolvimento em Python


(add-hook 'python-mode-hook '(lambda ()
  ;; Desativa o anúncio automático do buffer Messages
  (setq-local emacspeak-speak-messages nil)
))


(use-package lsp-pyright
  :ensure t
  :after (python)
  :custom
  (lsp-pyright-disable-organize-imports t)
  :hook (python-mode . lsp-deferred)
)

(use-package auto-virtualenv
  ;; Possibilita a ativação automática do ambiente virtual (.venv).
  :ensure t
  :hook (python-mode . auto-virtualenv-set-virtualenv)
)

(use-package py-isort
  ;; Organizar os imports automaticamente
  :ensure t
  :hook (before-save . py-isort-before-save)
)

(use-package python-pytest
  :ensure t
  :after (auto-virtualenv)
  :custom
  (python-pytest-project-name-in-buffer-name nil)
  :hook (python-pytest-finished . (lambda ()
    "Utilize o Emacspeak para anunciar o resultado do processo de execução dos testes."
    (end-of-buffer)
    (while (not (search-forward "=== " (line-end-position) t))
      (previous-line))
    (emacspeak-speak-line)
    (emacspeak-auditory-icon 'task-done)))

  :bind
  ("C-S-a r" . python-pytest)   ;; Rodar todos os testes
  ("C-S-a f" . python-pytest-file-dwim)   ;; Rodar os testes que correspondem ao buffer atual
  ("C-S-a t" . python-pytest-function-dwim)   ;; Rodar uma função de teste que corresponde à posição do cursor
  ("C-S-a C-S-r" . python-pytest-repeat)   ;; Repetir o último comando utilizado para a execução dos testes
  ;; Abrir o buffer que contém o log de execução do pytest
  ("C-S-a e" . (lambda ()
    (interactive)
    (switch-to-buffer python-pytest-buffer-name)
    (emacspeak-auditory-icon 'select-object)
    (emacspeak-speak-mode-line)))
)

(provide 'config-python)
