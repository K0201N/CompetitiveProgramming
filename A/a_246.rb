x1, y1 = gets.split.map(&:to_i)
x2, y2 = gets.split.map(&:to_i)
x3, y3 = gets.split.map(&:to_i)

x = 0
y = 0

if x1 == x2
    x = x3
elsif x2 == x3
    x = x1
elsif x3 == x1
    x = x2
end

if y1 == y2
    y = y3
elsif y2 == y3
    y = y1
elsif y3 == y1
    y = y2
end

puts "#{x} #{y}"
