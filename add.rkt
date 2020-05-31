#lang racket
(require "TDAzonas.rkt")
(provide add)
(define add (lambda (cambios) (lambda(zonas)
     (if (null? (car(index zonas)))
         cambios
         (if (null? cambios)
             (index zonas)
             (append (index zonas) cambios)
             )))))

(define inWorkspace (lambda(cambios zonas)
                      (if (list? (andmap(member cambios (workspace zonas))))
                          cambios
                          null
                          )
                      ))