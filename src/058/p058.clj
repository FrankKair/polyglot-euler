(defn prime? [x]
  (case x
    1 false
    2 true
    (every?
      #(not (= (rem x %) 0))
      (range 2 (inc (Math/floor (Math/sqrt x)))))))

(defn spiral-corners [side]
  (if (= side 1)
    '(1)
    (map #(- (* side side) (* % (dec side)))
         (range 0 4))))

(defn prime-corners-count [side]
  (->> (spiral-corners side)
       (filter prime?)
       (count)))

(defn diag-count [side-len] (dec (* 2 side-len)))

(defn more-than-10% [[side-len prime-sum]]
  (let [percentage (/ prime-sum (diag-count side-len))]
    (> percentage 0.1)))

(defn solve []
  (->> (iterate #(+ % 2) 1)
       (map prime-corners-count)
       (reductions +)
       (map-indexed (fn [idx itm] [(inc (* 2 idx)) itm]))
       (drop 1)  ; drop case when side-length = 1
       (drop-while more-than-10%)
       (take 1)
       (ffirst)))

(prn (solve))
