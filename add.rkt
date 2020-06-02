#lang racket
(require "TDAzonas.rkt")
(provide add)
;desc: envia los archivos especificados al Index
;dom: lista X Zona X lista 
;rec: Zona
;recurcion : cola
(define add (lambda (cambios) (lambda(zonas)
     (if (inWorkspace cambios (workspace zonas))
         (if (null? (index zonas))
             (listazonas(list
              (workspace zonas)
               cambios
              (localRepository zonas)
              (remoteRepository zonas)))
         (if (null? cambios)
             (listazonas(list
              (workspace zonas)
              (index zonas)
              (localRepository zonas)
              (remoteRepository zonas)))

             (listazonas(list
              (workspace zonas)
              (append (index zonas) cambios)
              (localRepository zonas)
              (remoteRepository zonas)))
             ))
         (display "uno o mas elementos no pertenecen al workspace")
         ))))

;desc: funcion que revisa si los elementos entregados estan en el workspace
;dom: lista X Lista
;rec:  Boolean
(define inWorkspace (lambda(cambios workspace)
                      (if (not(null? cambios))
                          (if (not(boolean? (member (car cambios) workspace)))
                              (inWorkspace (cdr cambios) workspace)
                               #f
                           )
                          #t
                      )))