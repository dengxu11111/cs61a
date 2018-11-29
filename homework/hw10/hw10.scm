(define (accumulate combiner start n term)
  (if (= n 0)
      start
      (combiner (accumulate combiner start (- n 1) term) (term n))
      
  )
)

(define (accumulate-tail combiner start n term)
  (define (accumulate-tail combiner start n term sum))
  (if (= n 0)
      (combiner start sum)
      (acumulater-tail combiner start (- n 1) term (combiner sum (term n)))
      )
  (accumulate-tail combiner start (- n 1) term (term n))
)

(define-macro (list-of expr for var in seq if filter-fn)
  'YOUR-CODE-HERE
)
