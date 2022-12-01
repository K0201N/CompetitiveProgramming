n, l = gets.split.map(&:to_i)
s = n.times.map { gets.split.map(&:to_s) }.flatten

puts s.sort.join
