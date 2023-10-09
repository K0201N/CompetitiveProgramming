gets.to_i
t = gets.split.map(&:to_i)
m = gets.to_i

m.times.map do
  x, y = gets.split.map(&:to_i)

  res = t.dup
  res[x-1] = y
  puts res.sum
end
