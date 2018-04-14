class String
  def score : Int
    alphabet = Hash.zip(('A'..'Z').to_a, (1..26).to_a)
    self.gsub("\"", "").chars.reduce(0) { |sum, char| sum + alphabet[char] }
  end
end

def names : Array(String)
  File.read("p022_names.txt").split(",").sort
end

total_score = 0
names.each_with_index do |name, index|
  score = (index + 1) * name.score
  total_score += score
end

puts total_score
