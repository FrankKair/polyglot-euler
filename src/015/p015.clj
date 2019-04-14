(def init [1 1])

(defn step [line] 
  (->> (concat [0] line [0])
       (partition 2 1)
       (mapv (partial apply +))))

(defn solve [] 
  (->> init
      (iterate step)
      (drop 19)
      first
      (reduce ((map #(* % %)) +))))

(prn (solve))
