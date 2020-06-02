#lang racket
(require "TDAzonas.rkt")
(provide zona->string)
;desc: funcion que recibe la zona de trabajo y construye un string
;dom: zona
;rec: string
(define zona->string (lambda(zonas)
                       (string-join(list
                       (string-join (list "WORKSPACE \n"
                        (string-join (workspace zonas)))) 
                       (string-join (list "\n\nINDEX \n"
                         (string-join (index zonas)))) 
                       (string-join (list "\n\nLOCAL REPOSITORY \n"
                         (string-join (localRepository zonas)))) 
                       (string-join (list "\n\nREMOTE REPOSITORY \n"
                         (string-join (remoteRepository zonas)))) 
                       ))))

 ;Ejemplo                      
;(display (zona->string zonas))