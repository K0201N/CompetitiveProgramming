a, b, c, x = gets.split.map(&:to_i)
i = b - a
if x <= a
    puts 1.to_f
elsif x <= b
    puts c.to_f / i
else
    puts 0
end
