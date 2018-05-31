; works in both clojure and clojurescript

(defn solve []
  (let [numbers (range 1 101)
        square #(* % %)
        sum-squares (transduce (map square) + 0 numbers)
        square-sum (square (reduce + 0 numbers))]
      (- square-sum sum-squares)))

(prn (solve))