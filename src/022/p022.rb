def names
  File.read("p022_names.txt").split(",").sort
end

def solve
  name_scores = names.each_with_index.map do |name, index|
    bytes = name.bytes
                .map { |b| b.to_i - 64 }
                .select { |b| b > 0 }
                .reduce(:+)
                
    (index + 1) * bytes
  end
  name_scores.reduce(:+)
end

puts solve
