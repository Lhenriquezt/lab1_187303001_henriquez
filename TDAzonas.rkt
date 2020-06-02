#lang racket
(provide listazonas zonas zona1 workspace index localRepository remoteRepository zonas)
;TDA zonas
;Zonas = Nulo|
;        Zona X Zonas

; Zona = Lista X Lista X Lista X Lista = workspace X index X localRepository X remoteRepository

;CONSTRUCTOR
;funcion constante
;dom: workspace X index X localRepository X remoteRepository
;rec: zona de trabajo
(define zonas (list
               (list "workspace.rkt" "archivo1.c")
               (list "I_archivo2.c" "index.rkt")
               (list "localR.rkt" "L_archivo3.c")
               (list "R_archivo4.c" "remote.rkt")))

(define zona1 (list
               (list "archivo1.c")
               (list )
               (list "archivo3.c")
               (list "archivo4.c")))

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
      (car zonas)
      null))

;Pertencia
;dom: 'a type (cualquier tipo)
;rec: boolean
(define zonas? (lambda (Z)
         (and (list? Z) (list? (car Z)) (list? (cadr Z)) (list? (caddr Z)) (list? (cadddr Z)))))


