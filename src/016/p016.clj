(defn int-pow [n m]
  (transduce (map bigint)
             *
             (repeat m n)))

(def char-to-num #(-> % int (- 48)))

(defn sum-digits [n]
   (transduce (map char-to-num) + 0 (str n)))

(defn solve [] (sum-digits (int-pow 2 1000)))

(prn (solve))
