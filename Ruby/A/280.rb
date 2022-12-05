h = gets.to_i
s = h.times.map { gets.chomp.split('') }.flatten

p s.count('#')
