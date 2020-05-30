#lang racket
(require "funciones.rkt")
(define git (lambda (comando)
             (cond
               ((equal? pull comando) pull)
               ;((equal? push comando) push)
               ;((equal? commit comando) commit)
               ;((equal? add comando) add)
                )))