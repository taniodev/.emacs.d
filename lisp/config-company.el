;; Configurações do módulo de preenchimento Company (para obter auto complete)

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 3)
  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))

  ;; Control+TAB - Chamar o preenchimento manualmente
  :bind ("C-<tab>" . company-complete)
)


;; Habilita o suporte do yasnippet para todos os backends do company
(defun company-mode/backend-with-yas (backend)
  (if (and (listp backend) (member 'company-yasnippet backend))
      backend
    (append (if (consp backend) backend (list backend))
            '(:with company-yasnippet))))

(provide 'config-company)
