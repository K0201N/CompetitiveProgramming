s = 3.times.map { gets.chomp.split }.flatten
CONTESTS = %w(ABC ARC AGC AHC).freeze

puts CONTESTS - s
