(defn solve [] 
  (let [fib-iterator (fn [[fj fk]] [fk (+ fj fk)])
        fib-lazy (iterate fib-iterator [1 1])
        treat-fib (comp (map second) (filter even?))
        limited-sum (fn ([total] total)
                        ([acc n] (if (< n (* 4 1e6)) (+ acc n) (reduced acc))))]
    (transduce treat-fib limited-sum 0 fib-lazy)))

(prn (solve))
