(defn spiral-diag-sum [x]
  (cond
    (= x 1) 1
    (= x 2) 10
    :else (+ (* 4 x x)
             (- (* 6 (- x 1)))
             (spiral-diag-sum (- x 2)))))

(defn solve [] (spiral-diag-sum 1001))

(prn (solve))
