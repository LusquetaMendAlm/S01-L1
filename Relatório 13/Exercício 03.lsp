(defstruct garota-magica
    nome
    escurecido
    bruxas
)

(defun escuridao-total-grupo (grupo)
    (if (null grupo)
        0
        (+ (garota-magica-escurecido (car grupo))
            (escuridao-total-grupo (cdr grupo)))
    )
)

(defun total-de-bruxas (grupo)
    (reduce #'+
        (mapcar #'garota-magica-bruxas grupo)
        :initial-value 0)
)

(defun purifica (g quantidade)
    (make-garota-magica
        :nome (garota-magica-nome g)
        :escurecido
            (if (>= quantidade (garota-magica-escurecido g))
                0
                (- (garota-magica-escurecido g) quantidade))
        :bruxas (garota-magica-bruxas g))
)

(defun main ()
    (let* 
        ((grupo 
            (list
                (make-garota-magica :nome "Madoka" :escurecido 50 :bruxas 10)
                (make-garota-magica :nome "Homura" :escurecido 80 :bruxas 8)
                (make-garota-magica :nome "Sayaka" :escurecido 90 :bruxas 5)
            ))

            (nova-garota (make-garota-magica :nome "Mami" :escurecido 30 :bruxas 15))
            (novo-grupo (cons nova-garota grupo))
            (escurecida (first grupo))
            (purificada (purifica escurecida 30))
        )

    (format t "Primeiro grupo~%")
    (format t "Escuridao do grupo: ~a~%" (escuridao-total-grupo grupo))
    (format t "Bruxas derrotadas pelo grupo: ~a~%" (total-de-bruxas grupo))

    (format t "~%Segundo grupo~%")
    (format t "Escuridao total: ~a~%"(escuridao-total-grupo novo-grupo))

    (format t "~%Garota magica purificada~%")
    (format t "Nome: ~a~%" (garota-magica-nome escurecida))
    (format t "Escuridao antes da purificacao: ~a~%" (garota-magica-escurecido escurecida))
    (format t "Escuridao depois da purificacao: ~a~%"(garota-magica-escurecido purificada))
  )
)

(main)