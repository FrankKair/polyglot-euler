(ns problem-022
  (:require [clojure.string :refer [split]]))

(def names (-> "p022_names.txt" slurp (split #",") sort))

(defn score [idx name]
  (* (inc idx) 
    (transduce 
      (map #(- (int %) 64)) 
      + 
      (rest (pop (vec name))))))

(defn solve []
  (transduce 
    (map-indexed score)
    + 
    names))

(prn (solve))
