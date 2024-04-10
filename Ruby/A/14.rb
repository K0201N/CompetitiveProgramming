a = gets.to_i
b = gets.to_i
divided_val = a % b

puts divided_val.zero? ? divided_val : b - divided_val
