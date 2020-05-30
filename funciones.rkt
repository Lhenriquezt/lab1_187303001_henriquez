#lang racket

(provide pull zonas)

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

(define workspace (lambda (zonas)(list-ref zonas 0)))
(define index (lambda (zonas)(list-ref zonas 1)))
(define localRepository (lambda (zonas)(list-ref zonas 2)))
(define remoteRepository (lambda (zonas)(list-ref zonas 3)))
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
(define pull (lambda(zonas)(pullInterno (workspace zonas) (remoteRepository zonas))))

(define add (lambda (cambios) (lambda(zonas)
     (if (null? (index zonas))
         cambios
         (if (null? cambios)
             (index zonas)
             (append (index zonas) cambios)
             )))))
;desc: envia los archivos desde el local repository al remote repository reemplazando los duplicados
;dom: Lista 
;rec: Lista
(define push (lambda(zonas)
     (if (null? (remoteRepository zonas))
         (localRepository zonas)
         (if (null? (localRepository zonas))
             (remoteRepository zonas)
             (remove-duplicates(append (remoteRepository zonas) (localRepository zonas)))
             ))))

(define commit (lambda (s) (- s s)))


(define git (lambda (comando)
              (cond
               ((equal? pull comando) pull)
               ((equal? push comando) push)
               ((equal? commit comando) commit)
               ((equal? add comando) add)
                )))