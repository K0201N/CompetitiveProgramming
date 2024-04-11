n, s, t = gets.split.map(&:to_i)
a = n.times.map { gets.to_i }
w = a[0]
res = 0

res += 1 if (s..t).include?(w)

a.drop(1).each do |i|
  w += i
  res += 1 if (s..t).include?(w)
end

puts res
