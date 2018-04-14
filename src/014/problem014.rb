#!/usr/bin/env ruby

def collatz(n)
    seq = [n]
    while n > 1
        if n % 2 == 0
            n = n/2
        else
            n = 3*n + 1
        end
        seq.append(n.to_i)
    end
    return seq
end

sizes = (1..1e6).map{|i| collatz(i).size}

puts sizes.index(sizes.max) + 1
