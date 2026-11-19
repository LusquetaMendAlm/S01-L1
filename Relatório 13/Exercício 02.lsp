(defstruct criatura
    nome
    bioma
    profundidade
    perigo
)

(defun texto-do-perigo (perigo)
    (case perigo
        (:inofensiva "Inofensiva")
        (:agressiva "Agressiva")
        (:leviatan "Leviata (manter distancia)")
        (otherwise "Desconhecido")
    )
)

(defun descreve-criatura (c)
    (format nil "~a: ~%Bioma - ~a ~%Profundidade - ~a metros ~%Perigo - ~a"
        (criatura-nome c)
        (criatura-bioma c)
        (criatura-profundidade c)
        (texto-do-perigo (criatura-perigo c)))
)

(defun abaixo-de-metros (catalogo metros)
    (remove-if-not
        (lambda (criatura)
            (> (criatura-profundidade criatura) metros))
        catalogo)
)

(defparameter *catalogo*
    (list
        (make-criatura :nome "Peixe-palhaco" :bioma "Recifes" :profundidade 15 :perigo :inofensiva)
        (make-criatura :nome "Stalker" :bioma "Floresta de algas" :profundidade 120 :perigo :agressiva)
        (make-criatura :nome "Leviata" :bioma "Zona abissal" :profundidade 900 :perigo :leviatan)
        (make-criatura :nome "Peeper" :bioma "Aguas rasas" :profundidade 30 :perigo :inofensiva)
    )
)

(defun main ()
    (let ((profundidade-limite 100))

    (format t "Catalago de criaturas marinhas:~%")

    (dolist (texto (mapcar #'descreve-criatura *catalogo*))
        (format t "~%~a~%" texto)
    )

    (format t "~%Criaturas marinhas em porfundidades menores que 100 metros:~%" profundidade-limite)

    (dolist (texto
        (mapcar #'descreve-criatura
        (abaixo-de-metros *catalogo* profundidade-limite)))
    (format t "~%~a~%" texto))

    (format t "~%Quantidade de criaturas encontradas em porfundidades menores que 100 metros: ~a criaturas~%" (length (abaixo-de-metros *catalogo* profundidade-limite)))
  )
)

(main)