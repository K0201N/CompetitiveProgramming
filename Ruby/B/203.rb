n, k = gets.split.map(&:to_i)

res = 0
(1..n).each do |i|
  (1..k).each do |j|
    res += i * 100 + j
  end
end

puts res
