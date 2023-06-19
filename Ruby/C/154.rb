n = gets.to_i
a = gets.chomp.split.uniq

puts n == a.size ? 'YES' : 'NO'
