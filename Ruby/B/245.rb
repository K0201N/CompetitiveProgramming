n = gets.to_i
a = gets.split.map(&:to_i)

puts ([*0..2000] - a)[0]
