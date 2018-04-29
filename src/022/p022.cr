def names
  File.read("p022_names.txt").split(",").sort
end

def solve
  name_scores = names.map_with_index do |name, index|
    bytes = name.bytes
                .map { |b| b.to_i32 - 64 }
                .select { |b| b > 0 }
                .sum

    (index + 1) * bytes
  end

  name_scores.sum
end

puts solve
