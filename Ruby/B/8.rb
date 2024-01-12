n = gets.to_i
names = n.times.map { gets.chomp }
hash = Hash.new(0)
names.each { |name| hash[name] += 1 }

puts hash.key(hash.values.max)
