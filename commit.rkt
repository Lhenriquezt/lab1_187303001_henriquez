#lang racket
(require "TDAzonas.rkt")
(provide commit)
;desc: Función que genera un commit con los cambios almacenados en index
;con un mensaje y los envia al LocalRepository.
;dom: String X zona
;rec: lista de zonas
(define commit (lambda (comentario) (lambda(zonas)
     (if (null? (index zonas))
         (listazonas(list
              (workspace zonas)
              null
              (localRepository zonas)
              (remoteRepository zonas)
              ))
         (if (null? (localRepository zonas))
             (listazonas(list
              (workspace zonas)
              null
              (append (index zonas) (cons comentario null))
              (remoteRepository zonas)
              ))
             (listazonas(list
              (workspace zonas)
              null
              (append (localRepository zonas) (index zonas) (cons comentario null))
              (remoteRepository zonas)
              ))
             )))))