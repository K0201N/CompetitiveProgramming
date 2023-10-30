n = gets.to_i
a = gets.split.map(&:to_i)

res = 0
(1...n).each do |i|
  if 0 <= a[i-1] - a[i]
    res += a[i-1] - a[i]
    a[i] += a[i-1] - a[i]
  end
end

puts res
