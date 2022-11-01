;; Edição de HTML e CSS

(use-package web-mode
  :ensure t
  :custom
  (web-mode-auto-close-style 2)
  ;; Indentação no lado esquerdo da linha
  (web-mode-style-padding 4)   ;; Para tag <style>
  (web-mode-script-padding 4)   ;; Para tag <script>

  :init
  (add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.xml\\'" . web-mode))
)

(provide 'config-web)
