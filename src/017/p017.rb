def words(num)
  u = %w[one two three four five six seven eight nine ten
         eleven twelve thirteen fourteen fifteen sixteen seventeen
         eighteen nineteen]

  d = %w[twenty thirty forty fifty sixty seventy eighty ninety]

  num = num.to_i

  return '' if num.zero?

  return u[num - 1] if num <= u.size

  if num < 100
    word = d[num / 10 - 2]
    word += words(num % 10) if num % 10 != 0
    return word
  end

  suffix = words(num - (num / 100) * 100)
  word = u[num / 100 - 1] + 'hundred'
  word += 'and' + suffix unless suffix.empty?
  word
end

puts(((1..999).map { |i| words(i) }.reduce(:+) + 'onethousand').size)
