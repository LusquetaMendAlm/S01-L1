(defstruct erva
    nome
    preco-por-grama
    toxicidade
)

(defun classifica-erva (erva)
    (cond
        ((>= (erva-toxicidade erva) 7) "venenosa")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")
    )
)

(defun preco-da-dose (erva gramas)
    (* (erva-preco-por-grama erva) gramas)
)

(defun descreve-erva (erva)
      (format nil "~a: ~,2f Ienes a grama, ~a."
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva))
)

(defun aviso (erva)
    (if (>= (erva-toxicidade erva) 7)
        "Maomao vai testar a erva em si mesma antes."
        "Erva liberada para o paciente.")
)

(defun main ()
    (let ((ervas
        (list
            (make-erva :nome "Epimedium" :preco-por-grama 5.99 :toxicidade 0)
            (make-erva :nome "Guadi San" :preco-por-grama 4.75 :toxicidade 4)
            (make-erva :nome "Azaleia" :preco-por-grama 3.89 :toxicidade 7)
        )))

    (dolist (erva ervas)
        (format t "~a~%" (descreve-erva erva))
        (format t "~a~%~%" (aviso erva))
    )

    (format t "Custo de 10 gramas de Guadi San: ~,2f Ienes." (preco-da-dose (second ervas) 10))
  )
)

(main)