n = gets.to_i
s = n.times.map { gets.chomp }

hash = Hash.new(0)
s.each { hash[_1] += 1 }
max_num = hash.values.max

puts hash.select { |_k, v| v == max_num }.keys.sort
