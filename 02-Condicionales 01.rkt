#lang racket

(println "Bienvenido a nuestro programa")
(println "Escriba (ACTIVAR) para iniciar el programa")

(define (leerNumber mensaje)
  (begin (display mensaje)
         (newline)
         (read)))

(define (nuevoPrecio semanas precioOriginal)
  (cond
    [(<= semanas 0) (print "Lo siento, el numero de semanas ingresado no es posible")]
    [(<= precioOriginal 0) (print "Lo siento, el precio ingresado no es posible")]
    [(= semanas 3) (- precioOriginal (* precioOriginal 0.25))]
    [(= semanas 4) (- precioOriginal (* precioOriginal 0.5))]
    [(= semanas 5) (- precioOriginal (* precioOriginal 0.75))]
    [else (print "Lo siento, no tiene descuento") ]))

(define (ACTIVAR)
  (begin
    (nuevoPrecio (leerNumber "Ingrese el numero de semanas, para aplicar el descuento")
                 (leerNumber "Ingrese el valor del producto"))))