x, y = gets.split.map(&:to_i)
puts (2*x..4*x).include?(y) && (y%2 == 0) ? 'Yes' : 'No'