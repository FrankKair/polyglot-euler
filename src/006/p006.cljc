; works in both clojure and clojurescript

(defn solve []
  (let [numbers (range 1 101)
        square #(* % %)
        [sum-of-squares sum] (transduce (map (juxt square identity)) (partial mapv +) [0 0] numbers)]
        (- (square sum) sum-of-squares)))

(prn (solve))