(defn spiral_diag_sum [x]
  (cond
    (= x 1) 1
    (= x 2) 10
    :else (+ (* 4 x x)
             (- (* 6 (- x 1)))
             (spiral_diag_sum (- x 2)))))

(defn solve [] (spiral_diag_sum 1001))

(prn (solve))