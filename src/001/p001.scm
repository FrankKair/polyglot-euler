(define solve
  (fold-left + 0
    (filter
      (lambda (n)
        (or (= (remainder n 3) 0) (= (remainder n 5) 0)))
  (iota 1000))))

(display solve)
