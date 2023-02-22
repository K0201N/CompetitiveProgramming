n = gets.to_i
a = n.times.map { gets.split.map(&:to_i) }

a.each { puts _1.sum }
