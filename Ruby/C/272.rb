gets
a = gets.split.map(&:to_i)
sums = a.combination(2).to_a.map(&:sum)
evens = sums.select(&:even?)

puts evens.empty? ? '-1' : evens.max
