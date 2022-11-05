n, q = gets.split.map(&:to_i)
l = n.times.map { gets.split.map(&:to_i) }

q.times do
  a, b = gets.split.map(&:to_i)
  p l[a-1][b]
end
