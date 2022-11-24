n = gets.to_i
n16 = n.to_s(16).upcase

puts n16.length == 1 ? '0'+ n16 : n16