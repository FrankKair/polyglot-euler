(def init (into [0] (map bigint) [0 1]))

(defn fib-step [[a b c]] [(inc a) c (+ b c)])

(def limit (dec (reduce * (repeat 999 (bigint 10)))))

(defn ready? [[_ n _]] (> limit n))

(defn solve []
  (->> init
       (iterate fib-step)
       (drop-while ready?)
       ffirst))

(prn (solve))
