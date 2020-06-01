#lang racket
(require "push.rkt")
(require "commit.rkt")
(require "pull.rkt")
(require "add.rkt")


(define git (lambda (comando)
              (cond
               ((equal? pull comando) pull)
               ((equal? push comando) push)
               ((equal? commit comando) commit)
               ((equal? add comando) add)
                )))