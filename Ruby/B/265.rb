_n, m, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
m.times do
  x, y = gets.split.map(&:to_i)
  a[x-1] -= y
end

res = 'Yes'
a.each do |i|
  t -= i
  res = 'No' if t <= 0
end
puts res
