(define (find s predicate)
  
    (if (null? s) #f
	
	(if (eq? (predicate (car s)) #t)
	    (car s) 
	    (find (cdr-stream s) predicate)
	    )
	
	)
    
    
    
    
)

(define (scale-stream s k)
  (cond
    ((null? s)nil)
    (else (cons-stream (* (car s) k) (scale-stream (cdr-stream s) k)))
    
    )
)

(define (has-cycle s)

  (define (in? lst s)
    (cond
      ((null? lst)#f)
      ((eq? (car lst) s)#t)
      (else (in? (cdr lst)s))
      
      )
    )
  (define (cycle memo s)

    (cond
      ((null? s)#f)
      ((in? memo s)#t)
      (else (cycle (cons s memo) (cdr-stream s))))
	
	)

    
    
	
  (cycle nil s)
)
(define (has-cycle-constant s)
  (let ((slow s) 
	(fast (cdr-stream s)))
	(cycle-steper slow fast)
    
    )
)
(define (cycle-steper slow fast)
  (cond
    ((or (null? slow)(null? (cdr-stream fast)))#f)
    ((eq? slow fast) #t)
    (else (cycle-steper (cdr-stream slow) (cdr-stream(cdr-stream fast))))
    
    
    )  
  
)




