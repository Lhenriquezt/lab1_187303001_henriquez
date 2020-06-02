#lang racket
(require "TDAzonas.rkt")
(provide pull)

;desc: trae los archivos desde repositorio remoto al workspace reemplazando los duplicados
;dom: Lista X lista
;rec: Lista
;tipo rec: natural
(define pullInterno (lambda (workspace remoteRepository)
    (if (null? workspace)
      remoteRepository
      (if (null? remoteRepository)
          workspace
          (remove-duplicates (cons (car workspace) (pullInterno (cdr workspace) remoteRepository)))
          ))))

;desc funcion que entrega argumentos a funcion pullInterno
;dom: zona
;rec: lista
(define pullWS (lambda(zonas)(pullInterno (workspace zonas) (remoteRepository zonas))))
;desc: funcion que toma el retorno de pullWS y construye una zona de trabajo
;dom: zona
;rec: zona
(define pull (lambda (zonas)
              (listazonas(list
              (pullWS zonas)
              (index zonas)
              (localRepository zonas)
              (remoteRepository zonas)
               ))))
;ejemplos
;(pull (list (list "workspace")(list "index")(list "local Repo")(list "remote repo")))
;(pull zonas)
;(pull zona1)