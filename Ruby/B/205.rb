n = gets.to_i
a = gets.split.map(&:to_i)

puts (1..n).sort == a.sort ? 'Yes' : 'No'
