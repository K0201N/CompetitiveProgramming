_n, d = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

res = -1
t.each_cons(2) do |x1, x2|
  if (x2 - x1) <= d
    res = x2
    break
  end
end
puts res
