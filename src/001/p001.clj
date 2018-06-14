(defn solve [] (->> (range 1000)
                    (filter #(or (= (rem %1 3) 0)
                                 (= (rem %1 5) 0)))
                    (reduce +)))

(prn (solve))
