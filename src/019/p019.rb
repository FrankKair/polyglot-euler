require 'date'

date = Date.new(1901, 1, 6)
sundays = 0
while date < Date.new(2000, 12, 31)
  sundays += 1 if date.mday == 1
  date += 7
end

puts sundays
