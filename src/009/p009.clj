(defn square [x] (Math/pow x 2))

(defn sqrt [x] (Math/sqrt x))

(defn sum-1000? [x] (== 1000 (reduce + 0 x)))

(defn solve []
  (let [candidates (for [b (range 700 5 -1), a (range 4 b)]
                        [a b (sqrt (+ (square a) (square b)))])]
        (transduce (comp (filter sum-1000?)
                         cat
                         (map int))
                   * 1
                   candidates)))

(prn (solve))
