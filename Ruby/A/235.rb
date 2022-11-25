n = gets.chomp.split('')

p n.rotate(1).join.to_i + n.rotate(2).join.to_i + n.rotate(3).join.to_i
