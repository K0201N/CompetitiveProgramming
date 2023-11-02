s = gets.chomp.split('')
sum = 0

s.each { sum += 1 if _1 == '1' }
puts sum
