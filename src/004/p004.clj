(defn solve []
  (let [palindrome? #(let [sn (str %)] (= sn (apply str (reverse sn))))
        products (for [x (range 999 99 -1) y (range 999 99 -1)] (* x y))]
      (transduce (filter palindrome?) max 0 products)))

(prn (solve))
