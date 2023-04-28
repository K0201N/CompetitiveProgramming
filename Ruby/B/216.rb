n = gets.to_i
s = n.times.map { gets.chomp.split }

puts s == s.uniq ? 'No' : 'Yes'
