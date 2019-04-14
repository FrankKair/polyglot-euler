(defn int-pow [n m]
  (transduce (map bigint)
             *
             (repeat m n)))

(def char-to-num #(-> % int (- 48)))

(defn sum-digits [n]
   (transduce (map char-to-num) + 0 (str n)))

(def solve (comp prn sum-digits int-pow))

(solve 2 1000)