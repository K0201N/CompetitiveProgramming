a = gets.to_i
b = gets.to_i
diff = (a-b).abs

puts [diff, 10 - diff].min
