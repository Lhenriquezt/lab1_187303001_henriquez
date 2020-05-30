#lang racket

(provide pull zonas)

(define zonas (list
               (list "workspace1" "a1")
               (list "index1" "b1")
               (list "localRepository1" "c1")
               (list "remoteRepository1" "d1")))

(define workspace (list-ref zonas 0))
(define index (list-ref zonas 1))
(define localRepository (list-ref zonas 2))
(define remoteRepository (list-ref zonas 3))

(define pull (lambda (zonas)
    (if (null? workspace)
      remoteRepository
      (if (null? remoteRepository)
          workspace
          (append workspace remoteRepository)
          ))))

(define add (lambda (cambios) (lambda(zonas)
     (if (null? index)
         cambios
         (if (null? cambios)
             index
             (append index cambios)
             )))))

(check-duplicates (list "archivo1" "asdasda" "archivo12"))
(define push (lambda (s) (lambda (x) (+ s x))))
(define commit (lambda (s) (- s s)))


(define git (lambda (comando)
              (cond
               ((equal? pull comando) pull)
               ((equal? push comando) push)
               ((equal? commit comando) commit)
               ((equal? add comando) add)
                )))