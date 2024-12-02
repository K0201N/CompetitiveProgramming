_, n = gets.split.map(&:to_i)
array = gets.chomp.chars

n.times { array[array.rindex('@')] = '.' }
puts array.join
