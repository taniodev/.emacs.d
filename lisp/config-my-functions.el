;; Minhas funções

(global-set-key (kbd "C-c d") 'my-duplicate-line)


(defun my-duplicate-line ()
  "Duplique a linha atual e mova o point para a nova linha criada."
  (interactive)

  (let ((last-column (current-column)) (line-content (thing-at-point 'line)))
    (end-of-line)

    ;; A linha copiada contém o sinal de nova linha \n.
    (if (eobp)
        (insert "\n")
      (right-char))

    (save-excursion (insert line-content))
    (move-to-column last-column)
    (emacspeak-auditory-icon 'yank-object)
    (emacspeak-speak-line)))

(provide 'config-my-functions)
