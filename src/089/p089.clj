(ns problem089
  (:require [clojure.java.io :as io]))

(def romans (line-seq (io/reader "p089_roman.txt")))

(def roman-arab-map (map {\I 1 \V 5 \X 10 \L 50 \C 100 \D 500 \M 1000}))

(def arab-roman-map (sorted-map-by > 1 "I" 4 "IV" 5 "V" 9 "IX" 10 "X" 40 "XL" 50 "L" 90 "XC" 100 "C" 400 "CD" 500 "D" 900 "CM" 1000 "M"))

(defn roman-arab-red
  ([] [0 0])
  ([res] (first res))
  ([[acc lim] step] [((if (> lim step) - +) acc step) (max step lim)]))

(defn roman->arab [rom] (transduce roman-arab-map roman-arab-red (reverse rom)))

(defn arab-roman-choose [n] (first (drop-while #(> (first %) n) arab-roman-map)))

(defn arab->roman [num]
  (loop [arab num roman ""]
    (if (zero? arab)
      roman
      (let [[an rn] (arab-roman-choose arab)]
        (recur (- arab an) (str roman rn))))))

(defn economy [rnm] (let [nrnm (-> rnm roman->arab arab->roman)] (apply - (map count [rnm nrnm]))))

(defn solve [] (transduce (map economy) + romans))

(prn (solve))
