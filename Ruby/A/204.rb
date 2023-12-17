x, y = gets.split.map(&:to_i)
num = [0, 1, 2]

puts x if x == y
puts num.reject { |n| n == x || n == y } unless x == y
