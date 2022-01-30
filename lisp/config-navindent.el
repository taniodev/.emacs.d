;; Funções para navegar através dos níveis de indentação
;; navindent - Navegação por Indentação


;; Control+Seta para baixo - Navega para a próxima linha com o mesmo nível de indentação
(global-set-key (kbd "C-<down>") 'navindent-next-block)

;; Control+Seta para cima - Navega para a linha anterior com o mesmo nível de indentação
(global-set-key (kbd "C-<up>") 'navindent-previous-block)

;; Control+Seta para a direita - Navega para o próximo nível (Filho)
(global-set-key (kbd "C-<right>") 'navindent-next-level)

;; Control+Seta para a esquerda - Navega para o nível anterior (Pai)
(global-set-key (kbd "C-<left>") 'navindent-previous-level)


(defun navindent--notify-with-emacspeak ()
  (emacspeak-auditory-icon 'large-movement)
  (emacspeak-speak-line))

(defun navindent--previous-line ()
  "Vai para a linha anterior e posiciona o point no início da indentação."
  (previous-line)
  (back-to-indentation))

(defun navindent--next-line ()
  "Vai para a linha seguinte e posiciona o point no início da indentação."
  (next-line)
  (back-to-indentation))


(defun navindent-next-block ()
  "Navega para a próxima linha no mesmo nível de indentação."
  (interactive)

  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (navindent--next-line)
    (while (or (> (current-indentation) initial-indentation) (and (eolp) (not (eobp))))
      (navindent--next-line))
    (when (< (current-indentation) initial-indentation)
      (goto-char point-start)))

  (navindent--notify-with-emacspeak))

(defun navindent-previous-block ()
  "Navega para a linha anterior no mesmo nível de indentação."
  (interactive)

  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (navindent--previous-line)
    (while (or (> (current-indentation) initial-indentation) (and (eolp) (not (equal (char-before) nil))))
      (navindent--previous-line))
    (when (< (current-indentation) initial-indentation)
      (goto-char point-start)))

  (navindent--notify-with-emacspeak))

(defun navindent-next-level ()
  "Navega para a linha do nível filho."
  (interactive)

  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (navindent--next-line)
    (while (and (eolp) (not (eobp)))
      (navindent--next-line))
    (when (<= (current-indentation) initial-indentation)
      (goto-char point-start)))

  (navindent--notify-with-emacspeak))

(defun navindent-previous-level ()
  "Navega para a linha do nível pai."
  (interactive)

  (let ((initial-indentation (current-indentation)) (point-start (point)))
    (navindent--previous-line)
    (while (or (and (>= (current-indentation) initial-indentation) (not (equal (char-before) nil))) (and (eolp) (not (equal (char-before) nil))))
      (navindent--previous-line))
    (when (equal (char-before) nil)
      (goto-char point-start)))

  (navindent--notify-with-emacspeak))


(provide 'config-navindent)
