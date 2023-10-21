gets.to_i
array = gets.split.map(&:to_i)
hash = {}

array.each.with_index(1) { |a, i| hash[a] = i }
array.sort.reverse_each { |a| p hash[a] }
