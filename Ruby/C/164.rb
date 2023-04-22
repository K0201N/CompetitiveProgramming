n = gets.to_i
s = n.times.map { gets.split.map(&:to_s) }

p s.uniq.size
