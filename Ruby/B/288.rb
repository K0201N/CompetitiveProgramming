n, k = gets.split.map(&:to_i)
s = n.times.map { gets.split.map(&:to_s) }

puts s[..k-1].sort
