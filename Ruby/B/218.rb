p = gets.split.map(&:to_i)
ALFABET = ('a'..'z').to_a.freeze

res = []
p.each do |i|
  res << ALFABET[i-1]
end
puts res.join
