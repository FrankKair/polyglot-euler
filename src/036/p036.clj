(ns problem-036
  #_(:require [clojure.core.reducers :refer [fold]])
  )

(defn to-bin [n] (Long/toString n 2))

(defn palindrome? [n] (->> n vec reverse (apply str) (= n)))

(def pal? (comp (partial every? identity) (partial map palindrome?) (juxt str to-bin)))

#_(defn solve-parallel []
  (fold 10000 +
    ((comp (remove #(= 0 (mod % 10)))
           (filter pal?))
      +)
    (vec (range 1 1e6))))

(defn solve []
  (transduce
    (comp
      (remove #(= 0 (mod % 10)))
      (filter pal?))
    + 0 (range 1 1e6)))

(prn (solve))
