n = gets.to_i
a = n.times.map { gets.to_i }
puts a.uniq.sort.reverse[1]
