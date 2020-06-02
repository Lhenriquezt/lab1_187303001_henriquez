#lang racket
(require "TDAzonas.rkt")
(require "push.rkt")
(require "commit.rkt")
(require "pull.rkt")
(require "add.rkt")
(require "zonaString.rkt")

;descr: funcion que llama a los comandos implementados de forma currificada
;dom: funcion
;rec: funcion
(define git (lambda (comando)
              (cond
               ((equal? pull comando) pull)
               ((equal? push comando) push)
               ((equal? commit comando) commit)
               ((equal? add comando) add)
                )))
;Ejemplos funcion Git
;(((git add) (list "archivo1.c"))zonas)
;((git pull)zonas)
;(((git commit)"agrega elementos del index a localRepository")zonas)