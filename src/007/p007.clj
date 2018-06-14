(defn next-primes [[primes new]] 
  (let [new* (inc (inc new))] 
      (if (some #(= 0 (rem new %)) primes)
          [primes new*]
          [(conj primes new) new*])))

(defn solve []
  (let [primes (->> [[2] 3]
                    (iterate next-primes)
                    (map first)
                    dedupe
                    (map peek))]
        (first (drop 10000 primes))))

(prn (solve))
