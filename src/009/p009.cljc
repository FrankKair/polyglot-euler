; works in both clojure and clojurescript

(defn solve []
  (let [square #(* % %)
        sqrt #(Math/sqrt %)
        sum-1000? #(== 1000 (apply + %))
        candidates (for [b (range 700 5 -1)
                         a (range 4 b)]
                        [a b (sqrt (+ (square a) (square b)))])]
        (transduce (comp (filter sum-1000?)
                         cat
                         (map int))
                   * 1
                   candidates)))

(prn (solve))