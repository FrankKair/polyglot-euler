def collatz(num)
  seq = [num]
  while num > 1
    num = num.even? ? num / 2 : 3 * num + 1
    seq.append(num.to_i)
  end
  seq
end

sizes = (1..1e6).map { |i| collatz(i).size }

puts sizes.index(sizes.max) + 1
