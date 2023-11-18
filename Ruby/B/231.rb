n = gets.to_i
names = n.times.map { gets.split.map(&:to_s) }

hash = Hash.new(0)
names.each { |name| hash[name] += 1 }

puts hash.key(hash.values.max)
