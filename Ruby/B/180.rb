n = gets.to_i
x = gets.split.map(&:to_i)

puts x.inject(0) { |sum, x| sum + x.abs }
puts Math.sqrt(x.inject(0) { |sum, x| sum + x**2 })
puts x.max_by { |x| x.abs }.abs
