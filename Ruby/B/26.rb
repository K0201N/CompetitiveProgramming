n = gets.to_i
r = n.times.map { gets.to_i }.sort.reverse
res = 0

n.times do |i|
  res += r[i] ** 2 * (-1) ** i
end

puts res * Math::PI
