(defn fact [n]
  (transduce (map bigint)
             *
             (range 2 (inc n))))

(def char-to-num #(-> % int (- 48)))

(defn sum-digits [n]
   (transduce (map char-to-num) + 0 (str n)))

(defn solve [] (sum-digits (fact 100)))

(prn (solve))
