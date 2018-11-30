; Q1
(define (compose-all funcs)
  (lambda (x) (if (null?  funcs) 
		  x
		  ((compose-all (cdr funcs)) ((car funcs) x))

	       )
    
  )
  
)

; Q2
(define (tail-replicate x n)
  (define (tail-replicate-helper x n lis)
    (if (= n 0) 
	lis
	(tail-replicate-helper x (- n 1) (cons x lis))
     
     
     
     )
    
    )
  (tail-replicate-helper x n nil)


)
