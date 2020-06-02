#lang racket
(require "TDAzonas.rkt")
;(require "git.rkt")
(provide push)
;desc: envia los archivos desde el local repository al remote repository reemplazando los duplicados
;dom: Zona 
;rec: Lista de Zonas
(define push (lambda(zonas)
     (if (null? (car(remoteRepository zonas)))
         (localRepository zonas)
         (if (null? (car(localRepository zonas)))
             (remoteRepository zonas)
             (listazonas(list
              (workspace zonas)
              (index zonas)
               null
              (remove-duplicates(append (remoteRepository zonas) (localRepository zonas)))))
             ))))
;Ejemplos
;(push zonas)
;(push zona1)
;(push (list (list "workspace")(list "index")(list "local Repo")(list "remote repo")))