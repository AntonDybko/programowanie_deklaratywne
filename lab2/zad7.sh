#7
#a
(define (fibonaci1 n)
    (cond
        ((= 0 n) 0)
        ((= 1 n) 1)
        (else (+ (fibonaci1 (- n 2)) (fibonaci1 (- n 1))))
    )
)

(fibonaci1 4)
#(fibonaci1 (2)) + (fibonaci1 (3))
#(fibonaci1 (1))+ (fibonaci1 (0)) + (fibonaci1 (2)) +(fibonaci1 (1))
#(fibonaci1 (1))+ (fibonaci1 (0)) + (fibonaci1 (0)) + (fibonaci1 (1)) +(fibonaci1 (1)) = 1 + 0 + 0 + 1 + 1

#b
(define (fibonaci_helper n i acc1 acc2)
    (cond
        ((not (= n i)) (cond
            ((= n 1) acc2)
            ((= n 0) acc1)
            (else (fibonaci_helper n (+ i 1) acc2 (+ acc1 acc2)))
        ))
        (else acc2)
    )
)

(define (fibonaci2 n)
    (fibonaci_helper n 1 0 1)
)

(fibonaci2 4)