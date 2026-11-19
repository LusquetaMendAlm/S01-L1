(defstruct dominio
    nome
    elemento
    dificuldade
    mora
)

(defun bonus-elemental (elemento)
    (case elemento
        (:electro 1.5)
        (:hydro 1.2)
        (otherwise 1)
    )
)

(defun recompensa-final (d)
    (* (dominio-mora d)
    (bonus-elemental (dominio-elemento d)))
)

(defun rota-lista (dificuldade-maxima dominios)
    (let* (
        (filtrados
            (remove-if-not
                (lambda (d)
                    (<= (dominio-dificuldade d) dificuldade-maxima)
                )
            dominios)
        ))

        (mapcar
            (lambda (d)
                (format nil "~a | Recompensa: ~a Moras"
                    (dominio-nome d)
                    (recompensa-final d)))
        filtrados)
    )
)

(defun total-mora (dominios)
    (reduce #'+
        (mapcar #'recompensa-final dominios)
        :initial-value 0)
)

(defun main ()
    (let* (
        (dominios
            (list
                (make-dominio :nome "Jardim do Verao" :elemento :pyro :dificuldade 3 :mora 4000)
                (make-dominio :nome "Pinaculo da Solidao" :elemento :cryo :dificuldade 2 :mora 2700)
                (make-dominio :nome "Torre do Orgulho Abjeto" :elemento :anemo :dificuldade 3 :mora 4800)
                (make-dominio :nome "Ecos das Mares Profundas" :elemento :hydro :dificuldade 4 :mora 8000)
                (make-dominio :nome "Casa Dourada" :elemento :electro :dificuldade 5 :mora 12000)
            )
        )

        (dificuldade-maxima 3)
        (original (first dominios))
        (copia (copy-dominio original)))

        (format t "Rotas com a dificuldade maxima ~a~%" dificuldade-maxima)

        (dolist (texto (rota-lista dificuldade-maxima dominios))
            (format t "~a~%" texto)
        )

        (format t "~%Total de moras dos dominios: ~a Moras~%" (total-mora dominios))

        (setf (dominio-mora copia) 7000)

        (format t "~%Copia do dominio~%")
        (format t "Mora original: ~a Moras~%" (dominio-mora original))
        (format t "Mora da copia: ~a Moras~%" (dominio-mora copia))
    )
)

(main)