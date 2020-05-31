#lang racket
(provide zonas workspace index localRepository remoteRepository zonas)
;TDA zonas
;Zonas = Nulo|
;        Zona X Zonas

; Zona = Lista X Lista X Lista X Lista = workspace X index X localRepository X remoteRepository

;CONSTRUCTOR
;funcion constante
;dom: workspace X index X localRepository X remoteRepository
;rec: zona de trabajo
(define zonas (list
               (list "workspace1" "a1")
               (list "index1" "b1")
               (list "localRepository1" "c1")
               (list "remoteRepository1" "a1")))

(define zona1 (list
               (list "work" "a1")
               (list "indx1" "b1")
               (list "localRepo1" "c1")
               (list "remoteRepo1" "a1")))

;SELECTORES
(define workspace (lambda (zonas)(list-ref  zonas 0)))
(define index (lambda (zonas)(list-ref zonas 1)))
(define localRepository (lambda (zonas)(list-ref zonas 2)))
(define remoteRepository (lambda (zonas)(list-ref zonas 3)))

;constructora
;dom: zona X ... x zona
;rec: zonas
(define (listazonas . zonas)
  (if (andmap zonas? zonas)
      zonas
      null))

;Pertencia
;dom: 'a type (cualquier tipo)
;rec: boolean
(define zonas? (lambda (Z)
         (and (list? Z) (list? (car Z)) (list? (cadr Z)) (list? (caddr Z)) (list? (cadddr Z)))))


