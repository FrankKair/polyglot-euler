#!/usr/bin/env ruby

class Integer
  def divisible_to(x)
    x.downto(1).all? { |e| self % e == 0  }
  end
end

number = 1
while !number.divisible_to(20)
  number += 1
end
puts number