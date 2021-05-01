
(use-package projectile
  :ensure t
  :config
  (setq projectile-project-search-path '("~/projetos/"))
  (setq projectile-switch-project-action 'projectile-dired)
  (define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
  (projectile-mode 1)
)

(provide 'config-projectile)
