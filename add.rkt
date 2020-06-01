#lang racket
(require "TDAzonas.rkt")
(provide add)
;desc: envia los archivos especificados al Index
;dom: lista X Zona X lista 
;rec: Zona
;recurcion : cola
(define addInterno (lambda (cambios) (lambda(zonas) (lambda(aux)
     (if (null? (index zonas))
         (listazonas(list
              (workspace zonas)
              (append aux cambios)
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
              (cons (car (index zonas)) (cons (((add cambios))(cdr(index zonas)) aux) null))
              (localRepository zonas)
              (remoteRepository zonas)))
             ))))))
;desc: envia los archivos especificados al Index
;dom: lista X Zona
;rec:  Zona
(define add (lambda (cambios) (lambda(zonas) (((addInterno cambios)zonas)null))))


(define inWorkspace (lambda(cambios zonas)
                      (if (list? (andmap(member cambios (workspace zonas))))
                          cambios
                          null
                          )
                      ))