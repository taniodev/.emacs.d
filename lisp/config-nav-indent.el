;; Funções para navegar pelos níveis de indentação

;; Control+Seta para baixo - Navega para a próxima linha com o mesmo nível de indentação
(global-set-key (kbd "C-<down>") 'nav-next-block)

;; Control+Seta para cima - Navega para a linha anterior com o mesmo nível de indentação
(global-set-key (kbd "C-<up>") 'nav-previous-block)

;; Control+Seta para a direita - Navega para o próximo nível (Filho)
(global-set-key (kbd "C-<right>") 'nav-next-level)

;; Control+Seta para a esquerda - Navega para o nível anterior (Pai)
(global-set-key (kbd "C-<left>") 'nav-previous-level)


(defun notify-with-emacspeak ()
  (emacspeak-auditory-icon 'large-movement)
  (emacspeak-speak-line))

(defun nav-next-block ()
  "Navega para a próxima linha no mesmo nível de indentação"
  (interactive)
  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (next-line)

    (while (or (> (current-indentation) initial-indentation) (and (eolp) (not (eobp))))
      (next-line)
    )   ;; Fim while

    (when (< (current-indentation) initial-indentation)
      (goto-char point-start))
  )   ;; Fim let
  (notify-with-emacspeak)
)

(defun nav-previous-block ()
  "Navega para a linha anterior no mesmo nível de indentação"
  (interactive)
  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (previous-line)

    (while (or (> (current-indentation) initial-indentation) (and (eolp) (not (equal (char-before) nil))))
      (previous-line)
    )   ;; Fim while

    (when (< (current-indentation) initial-indentation)
      (goto-char point-start))
  )   ;; Fim let
  (notify-with-emacspeak)
)

(defun nav-next-level ()
  "Navega para a linha do nível filho"
  (interactive)
  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (next-line)
    (back-to-indentation)

    (while (and (eolp) (not (eobp)))
      (next-line)
      (back-to-indentation)
    )   ;; Fim while

    (when (<= (current-indentation) initial-indentation)
      (goto-char point-start))
  )   ;; Fim let
  (notify-with-emacspeak)
)

(defun nav-previous-level ()
  "Navega para a linha do nível pai"
  (interactive)
  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (previous-line)
    (back-to-indentation)

    (while (or (and (>= (current-indentation) initial-indentation) (not (equal (char-before) nil))) (and (eolp) (not (equal (char-before) nil))))
      (previous-line)
      (back-to-indentation)
    )   ;; Fim while

    (when (equal (char-before) nil)
      (goto-char point-start))
  )   ;; Fim let
  (notify-with-emacspeak)
)


(provide 'config-nav-indent)
