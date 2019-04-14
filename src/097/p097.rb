require 'openssl'

def solve
  mod = 10**10
  (28_433 * 2.to_bn.mod_exp(7_830_457, mod) + 1) % mod
end

puts solve
