#lang racket

;leerNumber : string -> accion de read
;Se encarga de imprimir un mensaje y pedirle al usuario un numero
(define (leerNumber mensaje)
  (begin (display mensaje)
         (newline)
         (read)))

(define (suma valor1 valor2)
  (+ valor1 valor2))

(define (ACTIVAR)
  (begin
    (suma (leerNumber "Ingrese el primer valor")
          (leerNumber "Ingrese el segundo valor"))
    )
  )