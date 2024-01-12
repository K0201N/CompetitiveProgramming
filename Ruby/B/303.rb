n, m = gets.split.map(&:to_i)
a = m.times.map { gets.split.map(&:to_i).each_cons(2).to_a }.flatten(1).map(&:sort).uniq

puts ((1..n).to_a.combination(2).to_a - a).count
