array = 3.times.map { gets.split.map(&:to_i) }

puts array.map { |s, e| s * (e * 0.1) }.sum.floor
