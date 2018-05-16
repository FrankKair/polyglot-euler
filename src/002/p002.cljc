; works in both clojure and clojurescript! 

(defn fib-iterator 
  "Function that given a vector of 2 numbers, returns the next 'fibonacci' step: [0 1] => [1 1], [1 1] => [1 2]."
  [[fj fk]] [fk (+ fj fk)])

(def fib-lazy
  "Lazy windowed fibonacci sequence."
  (iterate ; seq[i+1] = f(seq[i]), since seq is lazy, we can have infinite terms!
    fib-iterator ; our updating/step function f
    [1 1])) ; initial input, seq[0]

(def treat-fib
  "Treatment to get the actual sequence we need, composing a filter and getting only the second term"
  (comp ; composition of transducers (think fancy combination of higher-order and simpler functions)
    (map second) ; gets the second term of the sequence, the actual fibonacci term
    (filter even?))) ; now we only have even terms

(defn limited-sum
  "Returns a simple sum that 'breaks'/stops our procedure when one input reaches limit L"
  [L] ; our upper limit 
  (fn ; lambda
    ([total] total) ; arity 1: identity, simply returns total
    ([acc n] ; arity 2, for each step
      (if (< n L) ; if n < L
              (+ acc n) ; sums up accumulator and new step and returns
              (reduced acc))))) ; else returns accumulator

(defn result
  "Function for transduction (think generalized map-reduce)"
  [fib]
  (transduce ; this guy is the golden gem
    treat-fib ; our treatment of the input (map+filter)
    (limited-sum (* 4 1e6)) ; accumulator/reducing function, just our limited sum
    0 ; initial value, the identity of our operation +
    fib)) ; the input

(println (result fib-lazy))