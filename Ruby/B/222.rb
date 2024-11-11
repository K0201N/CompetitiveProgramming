_n, point = gets.split.map(&:to_i)
results = gets.split.map(&:to_i)
puts results.select { |result| result < point }.count
