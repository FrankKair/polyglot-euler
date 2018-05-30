; works in both clojure and clojurescript

(defn solve []
  (let [candidates (range (* 11 13 17 19 2520) 
                          (reduce * 2 (range 3 20 2))
                          2)
        div? (fn [n] #(zero? (rem % n)))
        pred (apply every-pred (into [] (map div?) (cons 2 (range 3 21 2))))]
        (transduce (halt-when pred) conj candidates)))

(prn (solve))
