(defn series-step [x]
  (reduce * (repeat x (bigint x))))

(defn only-last-10-digits [x]
  (->> x
       str
       vec
       (take-last 10)
       (apply str)
       bigint))

(defn sum-series [x] 
  (transduce 
    (map (comp only-last-10-digits
               series-step))
    +
    (range 1 (inc x))))

(defn solve []
  (->> 1000 sum-series only-last-10-digits str))

(println (solve))
