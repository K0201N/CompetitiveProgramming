a, b = gets.split.map(&:to_i)

puts a == 1 && b == 10 || (a-b).abs == 1 ? 'Yes' : 'No'
