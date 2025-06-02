str = gets.chomp
substring_length = gets.to_i

set = Set.new
(0..str.size - substring_length).each { |i| set.add(str[i, substring_length]) }

puts set.size