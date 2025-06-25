n, m = gets.split.map(&:to_i)

sum = (0..m).map { |i| n**i }.sum

puts sum > 10**9 ? 'inf' : sum
