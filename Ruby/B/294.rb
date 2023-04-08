h, w = gets.split.map(&:to_i)
a = h.times.map { gets.split.map(&:to_i) }.flatten

ALFABET = ('A'..'Z').to_a.freeze
res = []
a.each do |i|
  if i == 0
    res << '.'
  else
    res << ALFABET[i-1]
  end
end

res.each_slice(w).to_a.each do |i|
  puts i.join
end
