_n, _m = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

res = 0
b.each do |i|
  res += a[i-1]
end
p res
