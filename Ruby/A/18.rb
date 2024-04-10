array = 3.times.map { gets.to_i }

puts array.map { |i| array.sort.reverse.index(i) + 1 }
