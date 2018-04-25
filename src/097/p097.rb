#!/usr/bin/env ruby
require 'openssl'

mod = 10**10
puts (28_433 * 2.to_bn.mod_exp(7_830_457, mod) + 1) % mod
